<p align="left">
  <img 
    src="https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Images/header.png"
  >
</p>

# Football Manager 2012: Application for Predicting Footballer's Value Based on Their In-Game Attributes

Football Manager is a game with a large database of football players. There are managers from the "real-world" that admitted using the Football Manager games in order to create their club's transfer list.
Therefore, the data in the game is pretty accurate, especially in the top-tier leagues (there is a good change that the players from top 4 ranked leagues in the world have in-game attributes
closer to the reality than the bottom-half ranked leagues in the world).

The main purpose of the application is to determine the correct value of a football player, based on his attributes (Dribbling, Technique, Finishing, Acceleration, Agility...). 
There are overrated footballers, who have an in-game value much higher that it should be, based on their abilities.  
There are also underrated players, who deserve a much better value, based on their abilities and their attributes. 

As a practical use-case, football clubs could use the application in order to find underrated footballers, that they could afford. For e.g., based on the results of the application, a footballer that has an
in-game value of 5 million dollars, should have, based on his abilities, a value of 46 million dollars. Therefore, a club could buy a player with approximately 5 million dollars, that has a real value 10 times
bigger.

On the other hand, a club could benefit by not transferring overrated players, or transfering players at their right value.

## Installation
In order to run the scripts from the Demo folder, Jupyter Notebook shall be installed.

## Summary
✅ G.U.I. 

✅ Ease of installation

❌ Additional hardware needed

## Project description

### Folder structure

📁 Delphi_files : contains the Delphi project files of the desktop application.

📁 Demo : contains a demo application that predicts the striker's value for all the strikers from England, Spain, Italy, Germany and France.
- 📄 [Extract_League.ipynb](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Demo/Extract_League.ipynb): read .txt files for each league, parse the content and save dataframes into .csv files.
- 📄 [Concatenation_League](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Demo/Concatenation_Leagues.ipynb): import the dataframes of the leagues and concatenate them.
- 📄 [Price_Prediction.ipynb](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Demo/Price_Prediction.ipynb): creates a model for the strikers, and a dataset that contains the actual value of the strikers, and the predicted value of the strikers.
    
📁 Full : contains the Python scripts used in the original program, that uses information from more than 30 leagues.
- 📄 [Extract_League.ipynb](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Full/Extract_League.ipynb): same as the Demo version, but not runnable.
- 📄 [Concatenation_League](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Full/Concatenation_Leagues.ipynb): same as the Demo version, but not runnable.
- 📄 [Price_Prediction.ipynb](https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Full/Price_Prediction.ipynb): same as the Demo version, but not runnable.
### Technologies

<table>
  <tr>
    <th>🔨 Tools/Framework</th>
    <th>📘 Language</th>
    <th>📃 Usage </th>
    <th>➕ Additional resources  </th>
    <th> ℹ Details  </th>
  </tr>
  <tr>
    <td>Jupyter Notebook</td>
    <td>Python</td>
    <td>Data Cleaning, Artificial Neural Network</td>
    <td>Tensorflow</td>
    <td>
       <ul>
        <li>Export .txt files for each league from Football Manager 2012.</li>
        <li>Read the .txt files and parse into dataframes.</li>
        <li>Concatenate the dataframes from each league, into a single dataframe.</li>
        <li>Split the dataframes by positions: strikers dataframe, goalkeepers dataframe, defender left dataframe...</li>
        <li>Create a Neural Network for each position: for e.g. strikers Neural Network that predicts Value based on their abilities</li>
      </ul>
   </td>
  </tr>
  <tr>
    <td>Delphi</td>
    <td>Objective Pascal</td>
    <td>Desktop application</td>
    <td></td>
    <td>
       <ul>
        <li>Create an application that shows, for each position, the results of predicting the value for each footballer.</li>
        <li>List each footballer's attributes, position, age, value, predicted value.</li>
      </ul>
   </td>
  </tr>
  <tr>
    <td>MYSQL Workbench</td>
    <td>SQL</td>
    <td>Database</td>
    <td>XAMPP</td>
    <td>
       <ul>
        <li>Import the results of applying the neural network model on the datasets.</li>
        <li>Data are loaded into the desktop application.</li>
        <li>Queries are quicker than parsing JSON or XML.</li>
      </ul>
   </td>
  </tr>
</table>

### Results

After running the executable file of the application, the first window of the application is a 4-2-3-1 formation that allows the user to pick a position from the field.
For example, if the user selects "Striker", the app will display the list of strikers from the game, with their attributes, age, value and <b>predicted value</b>. The main reason of creating lists for different positions is because, for each position, there are other relevant attributes.
For instance, the neural network that predicts a striker's value, would not work for a goalkeeper, since for a goalkeeper, there are other attributes taken into consideration (Reflexes, Communication,
Handling, Kicking).

<p align="center">
  <img 
    src="https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Images/img8.PNG"
    width = "1000"
    height = "auto"
  >
</p>

After pressing the "Striker" button, a new window opens. The window contains, in the bottom half, a list of strikers with their age, position, value, predicted value and difference (between predicted value and real value). 
If the difference is a negative number (less than 0), it means the football player's value is probably overrated. If the difference is a positive number (greater than 0), it means the football player is underrated. 
The top-left half of the window contains some basic filters that can be applied in order to generate the desired list. For instance, for a club from Romania, search footballers with age under 21, that have an in-game price of 1.5 mil. dollars. It will generate a list of players, and the players that a club should be targetting, are the players with a positive difference between predicted value and real value.

The top-left half displays also information like:
<ul>
  <li>value</li>
  <li>predicted value</li>
  <li>difference (between predicted value and real value)</li>
</ul>

The top-right half contains the player's following information: 
<ul>
  <li>name</li>
  <li>position</li>
  <li>in-game attributes (from 1 to 20)</li>
</ul>

<p align="center">
  <img 
    src="https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Images/img9.PNG"
    width = "800"
    height = "auto"
  >
</p>

In order to understand the possible usage of the app, let's take the following case. We compare two football players, with close to similar attributes: Fernando Torres and Franco Jara.
The player from the image above is Fernando Torres.


The player from the image below is Franco Jara.


<p align="center">
  <img 
    src="https://github.com/mariusstoica21/Football_Manager_2012/blob/main/Images/img10.PNG"
    width = "800"
    height = "auto"
  >
</p>

Torres has an in-game value of 80 mil. dollars, while Jara has an in-game value of 5 mil. dollars. The predicted value (of the neural network) for Torres is approx. 54 mil. dollars, while Jara has a predicted value of 41 mil. dollars.
Therefore, if a club wants to buy Torres, it should spend almost 80 mil. dollars to buy a player that has a value with 25 mil. more than it should be, based on his abilities. On the other hand,
a club willing to spend approx. 5 mil. dollars for Franco Jara, would acquire a football player that has the potential of a 46 mil. dollars player.

