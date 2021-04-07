<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF8">

        <title>Espace membre</title>

        <link rel="icon" type="image/png" href="<c:url value="res/img/MJCcraft_logo.png"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/profil.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/global.css"/>">

        <script src="<c:url value="/res/js/profil.js"/>"></script>

    </head>

    <body>

        <!--Mise en place de la sideBar ici-->
        <nav id="sideBar">

			<section>
				<c:choose>
					<c:when test="${empty sessionScope['sessionUser'].profile_picture}">
						<img src="<c:url value="/res/img/user.png"/>" />
					</c:when>
					<c:otherwise>
						<img
							src="<c:out value="${sessionScope['sessionUser'].profile_picture }"/>" />
					</c:otherwise>
				</c:choose>
	
				<!-- Affiche le prénom de l'utilisateur s'il en a un, sinon son pseudo -->
				<p>
					[ <c:out value="${empty sessionScope['sessionUser'].name ? sessionScope['sessionUser'].pseudo : sessionScope['sessionUser'].name}" /> ]
				</p>
			</section>

		<nav id="buttonContainer">
                <a href="#" id="survival" onclick="switchPage('survival')">Survie</a>
                <a href="#" id="faction" onclick="switchPage('faction')">Faction</a>
                <a href="#" id="creative" onclick="switchPage('creative')">Créatif</a>
                <a href="#" id="game" onclick="switchPage('game')">Mini-jeu</a>
                <a href="#" id="cosmetics" onclick="switchPage('cosmetics')">Gadgets</a>
                <a href="#" id="chat" onclick="switchPage('chat')">Discussion</a>
            </nav>

            <section>
                <a href="<c:url value="/membres/settings.jsp" />" id="options"><img src="<c:url value="/res/img/gear.png"/>"></a>
            </section>

        </nav>

        <!--Mise en place du contenu de la page-->
        <article id="mainContainer">

            <article id="survivalContainer">
                
                <div>

                    <section>
                        
                        <article id="achivementsContainer">

                            <h2>Réalisations :</h2>
                        
                            <form id="achivementsSearchOptions">

                                <div>
                                    <input type="checkbox" id="realisedAchivements" name="realised" value="realised" checked>
                                    <label for="realisedAchivements">Complétées</label>
                                </div>

                                <div>
                                    <input type="checkbox" id="unrealisedAchivements" name="unrealised" value="unrealised" checked>
                                    <label for="unrealisedAchivements">En cours</label>
                                </div>

                            </form>

                            <div id="achivementsList">

                                <table id="achivementsTable">

                                    <tr>
                                        <td>Nom :</td>
                                        <td>Etat :</td>
                                    </tr>
                                    <tr>
                                        <td>Sample achievment</td>
                                        <td>Done</td>
                                    </tr>
                                    <tr>
                                        <td>Sample achievment</td>
                                        <td>Pending</td>
                                    </tr>
                                </table>

                            </div>
                            
                            <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                            <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                        </article>
                        
                        <article id="homesContainer">

                            <h2>Homes :</h2>
                            <div id="homesList">

                                <table id="homesTable">

                                    <tr>
                                        <td>Nom:</td>
                                        <td colspan="3">Coordonnées :</td>
                                    </tr>
                                    <tr>
                                        <td>Base</td>
                                        <td>1052</td>
                                        <td>86</td>
                                        <td>894</td>
                                    </tr>
                                    <tr>
                                        <td>Base</td>
                                        <td>1052</td>
                                        <td>86</td>
                                        <td>894</td>
                                    </tr>
                                    <tr>
                                        <td>Base</td>
                                        <td>1052</td>
                                        <td>86</td>
                                        <td>894</td>
                                    </tr>
                                    <tr>
                                        <td>Base</td>
                                        <td>1052</td>
                                        <td>86</td>
                                        <td>894</td>
                                    </tr>
                                    <tr>
                                        <td>Base</td>
                                        <td>1052</td>
                                        <td>86</td>
                                        <td>894</td>
                                    </tr>

                                </table>

                            </div>

                            <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                            <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                         </article>

                    </section>

                    <article id="playerBankContainer">

                        <h2>Activité économique :</h2>
                        <form>

                            <fieldset>

                                <legend>Faire une transaction</legend>

                                <input type="text" id="recipient" placeholder="Destinataire">
                                <input type="text" id="amount" placeholder="Montant">
                                <input class="transactionSubmit" type="submit" value="submit" onsubmit="" onclick="transactionSubmit()">

                            </fieldset>

                        </form>

                        <h3>Evolution de votre économie :</h3>
                        
                        <div id="economicActivityGraphContainer">
                            
                        </div>

                        <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                        <p><a href="#" class="createNewPageButton">Plein écran</a></p>
                        
                        <h3>Listes des transactions :</h3>

                        <div id="economicActivityContainer">
                            
                            <table id="transactionList">

                                <tr>
                                    <td>De :</td>
                                    <td>A :</td>
                                    <td>Montant :</td>
                                </tr>

                            </table>

                        </div>

                        <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                        <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                    </article>

                </div>

            </article>
            
            <article id="factionContainer">

                <div>

                    <section>
                        
                        <article id="factionMembersContainer">

                            <h2>Les membres de votre faction : </h2>
                        
                            <form id="factionMembersSearchOptions">

                                <div>
                                    <input type="checkbox" id="withoutRank" name="without" value="sans grade" checked>
                                    <label for="withoutRank">sans grade</label>
                                </div>

                                <div>
                                    <input type="checkbox" id="member" name="member" value="member" checked>
                                    <label for="member">Member</label>
                                </div>

                                <div>
                                    <input type="checkbox" id="officer" name="officer" value="officer" checked>
                                    <label for="officer">Officier</label>
                                </div>

                                <div>
                                    <input type="checkbox" id="chief" name="chief" value="chief" checked>
                                    <label for="chief">Chef</label>
                                </div>

                            </form>

                            <div id="factionMembersList">

                                <table id="factionMembersTable">

                                    <tr>
                                        <td>Pseudo :</td>
                                        <td>Grade :</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>
                                    <tr>
                                        <td>Vlad</td>
                                        <td>Chef</td>
                                    </tr>

                                </table>

                            </div>
                            
                            <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                            <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                        </article>
                        
                        <article id="FactionHomesContainer">

                            <h2>Homes & warps de faction :</h2>
                            <div id="factionHomesList">

                                <table id="factionHomesTable">

                                    <tr>
                                        <td>Nom:</td>
                                        <td colspan="3">Coordonnées :</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                    <tr>
                                        <td>Avant post</td>
                                        <td>6598</td>
                                        <td>56</td>
                                        <td>7854</td>
                                    </tr>
                                </table>

                            </div>

                            <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                            <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                         </article>

                    </section>

                    <article id="factionBankContainer">

                        <h2>Activité économique de votre faction :</h2>
                        <form>

                            <fieldset>

                                <legend>Faire une transaction</legend>

                                <input type="text" id="recipient" placeholder="Destinataire">
                                <input type="text" id="amount" placeholder="Montant">
                                <input class="transactionSubmit" type="submit" value="submit" onsubmit="" onclick="transactionSubmit()">

                            </fieldset>

                        </form>

                        <h3>Evolution de l'économie de votre faction :</h3>
                        
                        <div id="factionEconomicActivityGraphContainer">
                            
                        </div>

                        <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                        <p><a href="#" class="createNewPageButton">Plein écran</a></p>
                        
                        <h3>Listes des transactions :</h3>

                        <div id="factionEconomicActivityContainer">
                            
                            <table id="factionTransactionList">

                                <tr>
                                    <td>De :</td>
                                    <td>A :</td>
                                    <td>Montant :</td>
                                </tr>

                            </table>

                        </div>

                        <!--La il faut créer un nouvel onglet avec le tableau complet lorsque c'est cliqué-->
                        <p><a href="#" class="createNewPageButton">Plein écran</a></p>

                    </article>

                </div>

            </article>

            <article id="creativeContainer">

                <div>

                    <table id="creativeTable">

                        <tr>
                            <td>Parcelle</td>
                            <td>Coordonnées</td>
                            <td>Parcelles</td>
                            <td>coopérateurs</td>
                            <td colspan="2">Temps</td>
                            <td>Description</td>
                            <td>Flags</td>
                            <td>Biome</td>
                            <td>Like</td>
                        </tr>
                        <tr>
                            <td>Chateau</td>
                            <td>252 685</td>
                            <td>4</td>
                            <td>0</td>
                            <td>Nuit</td>
                            <td>Neige</td>
                            <td><a href="#">Description</a></td>
                            <td>Non</td>
                            <td>Taiga</td>
                            <td>3</td>
                        </tr>

                    </table>

                </div>

            </article>

            <article id="gameContainer">

                <section>

                    <div>

                        <h2>Vos statistiques :</h2>
                        
                        <div id="gameTabsMainContainer">
                            <nav id="gamesTab">
                                <ul>
                                    <li>
                                        <a href="#">Construction ▼</a>
                                        <ul>
                                            <li>
                                                <a href="#">-----</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Combat ▼</a>
                                        <ul>
                                            <li>
                                                <a href="#" onclick="changeGameTab('pvpKit')">Pvp Kit</a>
                                            </li>
                                            <!--<li> Have nothing to show now
                                                <a href="#" onclick="changeGameTab('iceFight')">Ice Fight</a>
                                            </li>-->
                                        </ul>
                                    </li>
                                    <!-- Début du menu déroulant -->
                                    <li>
                                        <a href="#">Divers ▼</a>
                                        <ul>
                                            <li>
                                                <a href="#">-----</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                        <section id="pvpKitContainer">
                            
                            <div>
                                <table id="pvpKitMainStats">

                                    <tr>
                                        <td>Kills : ${empty sessionScope['sessionUser'].stats['pvpkit.kills'] ? 0 : sessionScope['sessionUser'].stats['pvpkit.kills'].value}</td>

                                        <td>Morts : ${empty sessionScope['sessionUser'].stats['pvpkit.deaths'] ? 0 : sessionScope['sessionUser'].stats['pvpkit.deaths'].value}</td>

                                        <td>Ratio : ${empty sessionScope['sessionUser'].stats['pvpkit.ratio'] ? 0 : sessionScope['sessionUser'].stats['pvpkit.ratio'].value}</td>
                                        
                                        <td>Killstreak en cours : ${empty sessionScope['sessionUser'].stats['pvpkit.killstreak'] ? 0 :sessionScope['sessionUser'].stats['pvpkit.killstreak'].value}</td>
                                        
                                        <td>Meilleur killstreak : ${empty sessionScope['sessionUser'].stats['pvpkit.best_killstreak'] ? 0 : sessionScope['sessionUser'].stats['pvpkit.best_killstreak'].value}</td>                                        

                                    </tr>

                                </table>
                            </div>
                            <table>

                            </table>

                        </section>

                        <!--<section id="iceFight">
                        </section>-->

                    </div>

                </section>

            </article>

            <article id="cosmeticsContainer">
            
                <p>
                    <span class="yellow">WO</span><span class="dark">RK</span>
                    <span class="yellow">
                        IN 
                    </span>
                    <span class="dark">PR</span><span class="yellow">OG</span><span class="dark">RE</span><span class="yellow">SS</span>
                </p>
                
            </article>

            <article id="chatContainer">

                <div id="mainContainerChat">

                    <section id="generalChatContainer">
                    
                        <p>Chat général :</p>

                        <div id="generalChat">
                            
                        </div>

                        <form id="sendGeneralMessage">

                            <fieldset>

                                <legend>Poster un message public : </legend>

                                <input type="text" id="generalMessage" placeholder="Entrer un texte ici ...">
                                <input class="generalMessageSubmit" type="submit" value="submit" onsubmit="" onclick="sendGeneralMessage()">


                            </fieldset>

                        </form>

                    </section>

                    <section id="fationChatContainer">

                        <p>Chat faction :</p>

                        <div id="factionChat">

                        </div>

                        <form id="sendfactionMessage">

                            <fieldset>

                                <legend>Envoyer un message aux membres de votre faction : </legend>

                                <input type="text" id="factionMessage" placeholder="Entrer un texte ici ...">
                                <input class="factionMessageSubmit" type="submit" value="submit" onsubmit="" onclick="sendFactionMessage()">

                            </fieldset>

                        </form>

                    </section>

                </div>
                
            </article>

        </article>

        <footer>

            <!--Dans le footer se trouvent toutes les Snackbars -->

            <div class="" id="transactionAsk">
                <p>Attention ! ce processus est irréversible :</p>
                <button id="confimTransaction" type="button" onclick="showTransactionConfirmation()">Confimer</button>
            </div>
            <div class="" id="transactionChecked">Transactions effectuée</div>
            <div class="" id="transactionUnchecked">Erreur ! Champs incomplets ou mal complétés</div>

        </footer>

    </body>
</html>