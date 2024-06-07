# Football Manager 2012: Application for Predicting Footballer's Value Based on Their In-Game Attributes

Football Manager is a game with a large database of football players. There are managers from the "real-world" that admitted using the Football Manager games in order to create their club's transfer list.
Therefore, the data in the game is pretty accurate, especially in the top-tier leagues (there is a good change that the players from top 4 ranked leagues in the world have in-game attributes)
closer to the reality than the bottom-half ranked leagues in the world.

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
    <td>Jupyter Notebook using Anaconda Navigator</td>
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
