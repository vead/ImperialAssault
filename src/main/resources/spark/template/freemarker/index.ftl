<!DOCTYPE html>
<html>

<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <#include "header.ftl">
</head>

<body>
  <#include "nav.ftl">
    <div class="container">
      <div class="row">
        <div class="col-xs-2">
          <div id="atkDicePanel" class="panel panel-success">
            <div class="panel-heading">Attack</div>
            <table class="table">
              <tr>
                <td class="buttonWrapper">
                  <button type="button" id="diceButton" data-diceId="redDice" class="btn btn-default-red">${encounter.attack.numRedDices}</button>
                </td>
              </tr>
              <tr>
                <td class="buttonWrapper">
                  <button type="button" id="diceButton" data-diceId="yellowDice" class="btn btn-default-yellow">${encounter.attack.numYellowDices}</button>
                </td>
              </tr>
              <tr>
                <td class="buttonWrapper">
                  <button type="button" id="diceButton" data-diceId="blueDice" class="btn btn-default-blue">${encounter.attack.numBlueDices}</button>
                </td>
              </tr>
              <tr>
                <td class="buttonWrapper">
                  <button type="button" id="diceButton" data-diceId="greenDice" class="btn btn-default-green">${encounter.attack.numGreenDices}</button>
                </td>
              </tr>
            </table>
            <div class="panel-footer">
              <div class="buttonWrapper">
                <button type="button" class="btn btn-default-reset"><span class="glyphicon glyphicon-remove-circle gi-2x"></span></button>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-3">
          <div id="atkModsPanel" class="panel panel-success">
            <div class="panel-heading">Mods</div>
            <table class="table">
              <tr>
                <td>
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span><img src="images/damage.png" alt="" height="24" width="24"></button>
                </td>
                <td>
                  <button type="button" class="btn btn-default"><img src="images/surge.png" alt="" height="24" width="24"><span class="glyphicon glyphicon-arrow-right"></span><img src="images/damage.png" alt="" height="24" width="24"></button>
                </td>
              </tr>
              <tr>
                <td>
                  <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus"><img src="images/surge.png" alt="" height="24" width="24"></button></td>
                  <td>X</td>
                </tr>
                <tr>
                  <td><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span><span class="glyphicon glyphicon-resize-horizontal"></span></button>
                </td>
                <td>
                  <button type="button" class="btn btn-default"><img src="images/surge.png" alt="" height="24" width="24"><span class="glyphicon glyphicon-arrow-right"></span><span class="glyphicon glyphicon-resize-horizontal"></button></td>
                </tr>
                <tr>
                  <td>A</td>
                  <td>B</td>
                </tr>
              </table>
            <div class="panel-footer">
              <div class="buttonWrapper"><button type="button" class="btn btn-default-reset"><span class="glyphicon glyphicon-remove-circle gi-2x"></span></button>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xs-3">
      <div id="resultPanel" class="panel panel-info">
        <div class="panel-heading">Result</div>
        <div class="panel-body">
          <p>Avg dmg: 3 (50%)</p>
          <p>Max dmg: 5 (30%)</p>
          <p>Min dmg: 1 (20%)</p>
        </div>
        <div class="panel-footer">
          <div class="buttonWrapper">
            <button type="button" id="calcButton" class="btn btn-default-calculate"><span class="glyphicon glyphicon-screenshot gi-2x"></span></button>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xs-2">
      <div id="defModsPanel" class="panel panel-danger">
        <div class="panel-heading">Mods</div>
        <div class="panel-body">
          <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus"><img src="images/block.png" alt="" height="24" width="24"></button>
            </div>
            <div class="panel-footer">
            <div class="buttonWrapper"><button type="button" class="btn btn-default-reset"><span class="glyphicon glyphicon-remove-circle gi-2x"></span></button>
        </div>
      </div>
    </div>
    </div>
    <div class="col-xs-2">
      <div id="defDicePanel" class="panel panel-danger">
        <div class="panel-heading">Defence</div>
        <table class="table">
          <tr>
            <td class="buttonWrapper">
              <button type="button" data-diceId="blackDice" class="btn btn-default-black"><span color="#FF00FF">${encounter.defence.numBlackDices}</span></button>
            </td>
          </tr>
          <tr>
            <td class="buttonWrapper">
              <button type="button" data-diceId="whiteDice" class="btn btn-default-white">${encounter.defence.numWhiteDices}</button>
            </td>
          </tr>
        </table>
      </div>
      <div class="panel-footer">
        <div class="buttonWrapper">
          <button type="button" class="btn btn-default-reset"><span class="glyphicon glyphicon-remove-circle gi-2x"></span></button>
        </div>
      </div>
    </div>
  </div>
</body>
<script>
  $(function() {

    $('button[data-diceId]').on('click', function() {
      var buttonId = $(this).attr('data-diceId');
      console.log("clicked a duchey dice id : " + buttonId);
      console.log("a: " + $('#'+buttonId).value );
      console.log("b: " + $(this).attr('value') );
      console.log("c: " + $(this) );
      console.log("d: " + $(this).value );
      // document.getE
      // $('#'+buttonId).toggle();
    });

    $('#calcButton').on('click', function() {
      $('#resultPanel').fadeOut(2000);
    });

  });
</script>

</html>
