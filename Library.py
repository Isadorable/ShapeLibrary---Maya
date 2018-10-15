import os
import json
import maya.cmds as cmds


class Library(dict):
    """
    This class is a dictionary of {shape name: shape attributes}. The attributes include shape path, shape screenshot
    path and shape type. The objects are saved as Maya files .ma, the screenshots are saved as .jpg files format 62x62
    and the info are saved in a .json file
    """
    def __init__(self, directory):
        self.directory = directory
        self.create_directory()

    #verify if the directory exists, otherwise create it
    def create_directory(self):
        if not os.path.exists(self.directory):
            os.mkdir(self.directory)

    def find(self):
        """
        Loads all .ma files existing in the shapes directory. For each file its information are extracted a organized
        as a new element in this dictionary.
        """
        self.clear()

        if not os.path.exists(self.directory):
            return

        files = os.listdir(self.directory)
        maya_files = [f for f in files if f.endswith('.ma')]
        for maya_file in maya_files:
            name, ext = os.path.splitext(maya_file)

            info_file = '%s.json' % name
            if info_file in files:
                info_file = os.path.join(self.directory, info_file)

                with open(info_file, 'r') as f:
                    file_info = json.load(f)
            else:
                file_info['name'] = name
                file_info['path'] = os.path.join(self.directory, maya_file)
                file_info['type'] = ""

            self[name] = file_info

    def load(self, name):
        """
        Loads all .ma with the given name into the Maya scene
        """
        path = self[name]['path']
        cmds.file(path, i=True, usingNamespaces=False)

    def save_shape(self, directory, name, shape_type):
        """
        Saves a new shape, its screenshot and information passed with the LibraryDialog such as name and shape type
        """
        info = {}
        path = os.path.join(directory, '%s.ma' % name)
        info_file = os.path.join(directory, '%s.json' % name)

        info['name'] = name
        info['path'] = path
        info['type'] = shape_type

        cmds.file(rename=path)

        if cmds.ls(selection=True):
            cmds.file(force=True, type='mayaAscii', exportSelected=True)
        else:
            cmds.file(save=True, type='mayaAscii', force=True)

        info['screenshot'] = self.save_shape_screenshot(name, directory)

        with open(info_file, 'w') as f:
            json.dump(info, f, indent=4)

        self[name] = path

    def save_shape_screenshot(self, name, directory):
        """
        Zoom in the shape selected in the scene then creates a screenshot of that object
        """
        path = os.path.join(directory, '%s.jpg' % name)

        cmds.viewFit()
        cmds.setAttr('defaultRenderGlobals.imageFormat', 8)
        cmds.playblast(completeFilename = path, forceOverwrite = True, format = 'image', width = 200, height = 200,
                       showOrnaments = False, startTime = 1, endTime = 1, viewer = False)

        return path

