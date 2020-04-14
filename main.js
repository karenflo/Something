// MODEL
const PlayArea = {
    Width : 1000,
    Height : 1000
}

const WindowSize = {
    Width : 800,
    Height : 800
};

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

var background = document.createElement("rect");
background.fill = "black";
background.width = "100%";
background.height = "100%";

const Background = background;

function renderVal(play, window, value){
    return (value / play) * window;
} 

function renderPlayer(player){
    var view = document.createElement("circle");
    view.fill = "blue";
    view.cx = renderVal(PlayArea.Width, WindowSize.Width, player.position.x);
    view.cy = renderVal(PlayArea.Height, WindowSize.Height, player.position.y);
    
    window.console.log(view);
    
    return view;
}

function render(state){
    var a = document.createElement("svg");
    a.width = WindowSize.Width;
    a.height = WindowSize.Height;

    a.children = [
        Background,
        renderPlayer(state.player)
    ];

    window.console.log(a);

    return a;
}

window.onload = function() {
    var game = document.getElementById("game");
    var svg = render(InitialState);

    game.children = [
        svg
    ];

};
