# Football Manager 2012 Application for Predicting Footballer's Value Based on Their In-Game Attributes

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
    
📁 Full : contains the Pythons scripts.

    📄 Documentation.pdf
    📄 Documentation.pdf
    📄 Documentation.pdf
    📁 Demo : contains scripts 
    📁 Demo : contains scripts

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
    <td>Xilinx Vivado 2020</td>
    <td>VHDL</td>
    <td>Artificial neurnal network</td>
    <td>Basys3 FPGA board, HTerm</td>
    <td>
       <ul>
        <li>The input of the NN and the model (weights and biases) are send from the PC to the FPGA, using HTerm.</li>
        <li>The values of the two files are stored in the block RAM memory of the FPGA.</li>
        <li>The values are represented in fixed point representation.</li>
         <li>The detection is made using a FSM (finite state machine).</li>
         <li>The output of the NN is showed on the SSD (seven segment display) of the FPGA.</li>
      </ul>
   </td>
  </tr>
  <tr>
    <td>Jupyter Notebook using Anaconda Navigator</td>
    <td>Python</td>
    <td>Convolutional neurnal network, Optical character recognition</td>
    <td>Tensorflow, Tesseract</td>
    <td>
       <ul>
        <li>The convolutional neural network was trained</li>
        <li>The model of the artificial neural network is send to the FPGA board.</li>
        <li>The OCR Script classifies and localizes the digit in the image of the ID.</li>
        <li>The images of the ID's are preprocessed, and using OCR, the digits are detected.</li>
      </ul>
   </td>
  </tr>
  <tr>
    <td>Eclipse</td>
    <td>Java</td>
    <td>Automatization app</td>
    <td>Winium, Inspect.exe, Winium Desktop Driver</td>
    <td>
       <ul>
        <li>The automatization app has the purpose to send automatically the input and weights files to the FPGA board.</li>
        <li>The automatizan app was created using Winium.</li>
        <li>In order to detect the id and names of the buttons, the Inspect.exe tool is used.</li>
        <li>In order to run the automatization app, the 9999 port has to be assigned, using Winium Desktop Driver.</li>
      </ul>
   </td>
  </tr>
  <tr>
    <td>Delphi</td>
    <td>Objective Pascal</td>
    <td>Desktop application</td>
    <td>ImageButton</td>
    <td>
       <ul>
        <li>The main advantage of using Delphi is the quickness in creating the desktop app, using the specialized objects.</li>
        <li>The main disadvantage is the impossibility of colouring buttons.</li>
        <li>This disadvantage was removed by implementing the ImageButton library, that allows using images on the background of the buttons.</li>
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
        <li>Information about users, original images and processed images are saved in the database.</li>
        <li>Data are read from the database by the desktop application, using query's.</li>
        <li>XAMPP allows the creation of a local MYSQL database.</li>
      </ul>
   </td>
  </tr>
</table>
