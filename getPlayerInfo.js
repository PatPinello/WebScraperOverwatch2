    window.onload = function ()
    {
        cookie = getCookie("playerIds");
        if(cookie != null)
        {
            players = cookie.split('%2C');
            var list = document.getElementById("playerList");
            for(var i=0;i<players.length;i++)
            {
                var li = document.createElement("li");
                li.setAttribute('id', players[i]);
                li.appendChild(document.createTextNode(players[i]));
                list.appendChild(li);
            }
        }
        else
        {
            return
        }
    }
    function getCookie(name)
    {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(';').shift();
    }

    function addPlayer()
    {
        var list = document.getElementById("playerList");
        var player = document.getElementById("playerName");
        var li = document.createElement("li");
        li.setAttribute('id', player.value);
        li.appendChild(document.createTextNode(player.value));
        list.appendChild(li);
    }

    function removePlayer()
    {
        var list = document.getElementById("playerList");
        var player = document.getElementById("playerName");
        var name = document.getElementById(player.value);
        list.removeChild(name);
    }

    function submitPlayers()
    {
        var listItems = [];
        var playerIds = [];
        listItems = document.getElementById("playerList").getElementsByTagName('li');
        for(i=0;i<listItems.length;i++)
        {
            playerIds[i] = listItems[i].innerText;
        }

        bakeCookie("playerIds", playerIds, 14);

    }

    function bakeCookie(name, value, days)
    {
        var expires;

        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toGMTString();
        }
        else {
            expires = "";
        }

        document.cookie = escape(name) + "=" +
            escape(value) + expires + "; path=/";
    }
