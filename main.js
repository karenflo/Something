// MODEL

// The play size
const PlayArea = {
    Width : 1000,
    Height : 1000
}

// The game window size
const WindowSize = {
    Width : 800,
    Height : 800
};

// The Initial state
const InitialState = 
{
    player : {
        // "up" "down" "left" "right"
        keys : [],
        position : {
            x : 500, // 0 - 1000
            y : 800  // 0 - 1000
        }
    }
};


// VIEW

// Our background
var background = document.createElement("rect");
background.fill = "black";
background.width = "100%";
background.height = "100%";

const Background = background;

// Transform a dimension from game space to window space
function renderVal(play, window, value){
    return (value / play) * window;
} 

// Make a positioned circle from a play object.
function renderPlayer(player){
    var view = document.createElement("circle");
    view.fill = "blue";
    view.cx = renderVal(PlayArea.Width, WindowSize.Width, player.position.x);
    view.cy = renderVal(PlayArea.Height, WindowSize.Height, player.position.y);
    
    return view;
}

// Transom the game state to an svg
function render(state){
    var a = document.createElement("svg");
    a.width = WindowSize.Width;
    a.height = WindowSize.Height;

    a.append
        ( Background
        , renderPlayer(state.player)
        );


    return a;
}

window.onload = function() {
    var game = document.getElementById("game");
    var svg = render(InitialState);

    game.append(svg);

};
