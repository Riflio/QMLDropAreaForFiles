import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("WDropArea")

    WDropArea {
        id: dropArea
        anchors.fill: parent
        anchors.margins: 10

        multiple: false
        helpText: qsTr("Drop files to here")
        enableSelectDialog: true
        enableSelectDialogDblClick: true
        fileExtensionFilters: ["Text (*.txt)", "Obj (*.o)"]

        onFilesAccepted: (files) => {
            console.log("Accepted files: ", files);
        }
    }

}
