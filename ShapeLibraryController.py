from PySide2 import QtWidgets, QtCore
import ShapeLibraryUI as shape_ui
import ShapeLibraryDialog as dialog_ui
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import maya.cmds as cmds
import os
from Library import Library

DIRECTORY = os.path.join(cmds.internalVar(userAppDir=True), 'scripts', 'ShapeLibrary', 'shapes')


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QMainWindow)


class ShapeLibraryWindow(QtWidgets.QMainWindow):

    def __init__(self, parent=None):
        #creating the window
        super(ShapeLibraryWindow, self).__init__(parent)
        self.library = Library(DIRECTORY)
        self.setWindowFlags(QtCore.Qt.Tool)
        self.ui = shape_ui.Ui_form_main()
        self.ui.setupUi(self, self.library)
        self.display_type = "All"

        #connecting the buttons
        self.ui.btn_open.clicked.connect(self.load_shape)
        self.ui.btn_save.clicked.connect(self.open_save_dialog)

        #connecting the combo box
        self.ui.vombo_box_shape_type.currentIndexChanged.connect(self.set_display_type)

    def set_display_type(self):
        """
        Gets the value of the 'type' combo box and stores it in the attribute 'self.display_type'
        """
        display_type = self.ui.vombo_box_shape_type.currentText()
        self.display_type = display_type
        self.ui.populate_list(self.library)

    def load_shape(self):
        """
        Loads the selected shape in the scene
        """
        selected_shape = self.ui.list_view_shapes.currentItem()

        if selected_shape:
            name = selected_shape.text()
            self.library.load(name)

    def open_save_dialog(self):
        """
        Opens a new dialog window to save new shapes
        """
        my_dial = ShapeLibraryDialog(parent=self)
        my_dial.show()

    def update_shapes(self):
        """
        Refreshes the list of shapes in the main window
        """
        self.ui.populate_list(self.library)


class ShapeLibraryDialog(QtWidgets.QMainWindow):
    """
    This class handles the logic of the 'Save' Dialog
    """
    def __init__(self, parent):
        #create the window
        super(ShapeLibraryDialog, self).__init__(parent)
        self.setWindowFlags(QtCore.Qt.Tool)
        self.dialog = dialog_ui.Ui_forma_main()
        self.dialog.setupUi(self)
        self.library = parent.library
        self.shape_type = "2D"

        #connecting the buttons
        self.dialog.btn_save.clicked.connect(lambda p=parent: self.save_shape(p))

        #connecting the radio buttons
        radio_btns = self.dialog.verticalLayoutWidget.findChildren(QtWidgets.QRadioButton)
        for radio_btn in radio_btns:
            radio_btn.toggled.connect(lambda status, shape_type=radio_btn.objectName(): self.set_shape_type(shape_type))

    def set_shape_type(self, shape_type):
        """
        Gets the value of the 'shape_type' combo box and stores it in the attribute 'self.shape_type'
        """
        self.shape_type = shape_type.split("_")[-1].upper()

    def save_shape(self, parent):
        """
        Adds the selected shape in the scene to the shapes library.
        """
        name = self.dialog.text_edit_shape_name.toPlainText()

        if name:
            self.library.save_shape(DIRECTORY, name, self.shape_type)
            self.close()
            parent.update_shapes()
        else:
            cmds.warning("Select a name")


#show the main window in Maya
my_win = ShapeLibraryWindow(parent=maya_main_window())
my_win.show()