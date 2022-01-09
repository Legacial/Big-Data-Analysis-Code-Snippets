df = pd.read_csv('/content/drive/MyDrive/Colab Notebooks/UNSW-NB15-full.csv')
df.drop(columns='cyber_dataset.label', inplace = True )
NonAttacks = df[df['cyber_dataset.attack_cat'] == 'null']
Exp = df[df['cyber_dataset.attack_cat'] == 'Exploits']
Reconnaissance = df[df['cyber_dataset.attack_cat'] == 'Reconnaissance']
DoS = df[df['cyber_dataset.attack_cat'] == 'DoS']
Generic = df[df['cyber_dataset.attack_cat'] == 'Generic']
Shellcode = df[df['cyber_dataset.attack_cat'] == 'Shellcode']
Analysis = df[df['cyber_dataset.attack_cat'] == 'Analysis']
Backdoors = df[df['cyber_dataset.attack_cat'] == 'Backdoors']
Fuzzers = df[df['cyber_dataset.attack_cat'] ==  ' Fuzzers']
Worms = df[df['cyber_dataset.attack_cat'] == 'Worms']
classes = pd.value_counts(df['cyber_dataset.attack_cat'], sort = True)
output=df['cyber_dataset.attack_cat']
df=df.iloc[:,:-1]

labels = ['None','Exp','Rec','DoS','Gen','Shell','Ana','Back','Fuzz','Worms']
classes.plot(kind = 'pie', subplots=True, figsize=(6,6))
plt.title("Attack Category Distribution")
plt.xticks(range(10), labels)
plt.xlabel("Attack Types")
plt.ylabel("Classification")







