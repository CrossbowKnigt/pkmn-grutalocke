// Este es el contenido completo de tuna.js
// Fuente: Usado en la funcionalidad de OBS Browser Source
var Tuna = (function () {
    var _state;

    function _init(callback) {
        if (window.obsstudio && window.obsstudio.onFileContents) {
            window.obsstudio.onFileContents = function (state) {
                _state = state;
                if (callback) {
                    callback(state);
                }
            };
            window.obsstudio.get and notifyFileContents();
        } else {
            console.error('Tuna requires OBS Studio API.');
        }
    }

    function _getState() {
        return _state;
    }

    function _refresh() {
        if (window.obsstudio) {
            window.obsstudio.get and notifyFileContents();
        }
    }

    return {
        init: _init,
        getState: _getState,
        refresh: _refresh
    };
})();