# -*- coding: utf-8 -*-

from PySide2 import QtWidgets, QtCore, QtGui


class Ui_form_main(object):

    def setupUi(self, form_main, library):
        form_main.setObjectName("form_main")
        form_main.resize(250, 349)
        self.verticalLayoutWidget = QtWidgets.QWidget(form_main)
        self.verticalLayoutWidget.setGeometry(QtCore.QRect(-1, -1, 255, 351))
        self.verticalLayoutWidget.setObjectName("verticalLayoutWidget")
        self.layout_main = QtWidgets.QVBoxLayout(self.verticalLayoutWidget)
        self.layout_main.setContentsMargins(5, 5, 5, 5)
        self.layout_main.setObjectName("layout_main")
        self.layout_shape_type = QtWidgets.QHBoxLayout()
        self.layout_shape_type.setObjectName("layout_shape_type")
        self.label_shape_type = QtWidgets.QLabel(self.verticalLayoutWidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Maximum, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label_shape_type.sizePolicy().hasHeightForWidth())
        self.label_shape_type.setSizePolicy(sizePolicy)
        self.label_shape_type.setObjectName("label_shape_type")
        self.layout_shape_type.addWidget(self.label_shape_type)
        self.vombo_box_shape_type = QtWidgets.QComboBox(self.verticalLayoutWidget)
        self.vombo_box_shape_type.setObjectName("vombo_box_shape_type")
        self.vombo_box_shape_type.addItem("")
        self.vombo_box_shape_type.addItem("")
        self.vombo_box_shape_type.addItem("")
        self.layout_shape_type.addWidget(self.vombo_box_shape_type)
        spacerItem = QtWidgets.QSpacerItem(120, 20, QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Minimum)
        self.layout_shape_type.addItem(spacerItem)
        self.layout_main.addLayout(self.layout_shape_type)
        self.list_view_shapes = QtWidgets.QListWidget(self.verticalLayoutWidget)
        self.list_view_shapes.setIconSize(QtCore.QSize(64, 64))
        self.list_view_shapes.setResizeMode(QtWidgets.QListView.Adjust)
        self.list_view_shapes.setGridSize(QtCore.QSize(76, 76))
        self.list_view_shapes.setViewMode(QtWidgets.QListView.IconMode)
        self.list_view_shapes.setObjectName("list_view_shapes")
        self.layout_main.addWidget(self.list_view_shapes)
        self.layout_buttons = QtWidgets.QHBoxLayout()
        self.layout_buttons.setContentsMargins(0, 0, 4, 0)
        self.layout_buttons.setObjectName("layout_buttons")
        self.btn_open = QtWidgets.QPushButton(self.verticalLayoutWidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.btn_open.sizePolicy().hasHeightForWidth())
        self.btn_open.setSizePolicy(sizePolicy)
        self.btn_open.setObjectName("btn_open")
        self.layout_buttons.addWidget(self.btn_open)
        self.btn_save = QtWidgets.QPushButton(self.verticalLayoutWidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.btn_save.sizePolicy().hasHeightForWidth())
        self.btn_save.setSizePolicy(sizePolicy)
        self.btn_save.setObjectName("btn_save")
        self.layout_buttons.addWidget(self.btn_save)
        self.layout_main.addLayout(self.layout_buttons)

        self.retranslateUi(form_main)
        QtCore.QMetaObject.connectSlotsByName(form_main)

        self.populate_list(library)

    def retranslateUi(self, form_main):
        _translate = QtCore.QCoreApplication.translate
        form_main.setWindowTitle(_translate("form_main", "Shape Library"))
        self.label_shape_type.setText(_translate("form_main", "Shape Type"))
        self.vombo_box_shape_type.setItemText(0, _translate("form_main", "All"))
        self.vombo_box_shape_type.setItemText(1, _translate("form_main", "2D"))
        self.vombo_box_shape_type.setItemText(2, _translate("form_main", "3D"))
        self.btn_open.setText(_translate("form_main", "Load"))
        self.btn_save.setText(_translate("form_main", "Save..."))

    def populate_list(self, library):
        self.list_view_shapes.clear()
        library.find()

        shape_type = self.vombo_box_shape_type.currentText()

        for name, info in library.items():
            if shape_type == "All" or shape_type == info.get('type'):
                item = QtWidgets.QListWidgetItem(name)
                self.list_view_shapes.addItem(item)

                screenshot = info.get('screenshot')
                if screenshot:
                    icon = QtGui.QIcon(screenshot)
                    item.setIcon(icon)


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    form_main = QtWidgets.QWidget()
    ui = Ui_form_main()
    ui.setupUi(form_main)
    form_main.show()
    sys.exit(app.exec_())

