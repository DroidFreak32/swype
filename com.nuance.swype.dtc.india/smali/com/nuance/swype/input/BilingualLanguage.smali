.class public Lcom/nuance/swype/input/BilingualLanguage;
.super Lcom/nuance/swype/input/InputMethods$Language;
.source "BilingualLanguage.java"


# static fields
.field private static final DISPLAY_LANGUAGE_DELIMITER:Ljava/lang/String; = "/"

.field private static final LANGUAGE_DELIMITER:Ljava/lang/String; = ":"

.field private static final SECONDARY_MODE_ID:Ljava/lang/String; = "secondary_"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final firstLang:Lcom/nuance/swype/input/InputMethods$Language;

.field private final secondLang:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "BilingualLanguage"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/BilingualLanguage;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 16
    .param p1, "firstLang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "secondLang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 26
    .line 27
    invoke-static/range {p1 .. p2}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageId(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 33
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    new-instance v1, Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Lcom/nuance/swype/input/InputMethods$Language;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 37
    new-instance v1, Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Lcom/nuance/swype/input/InputMethods$Language;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputModeNoHandwriting()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v8, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 42
    .local v8, "firstLangDefault":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v13, "newModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    const/4 v14, 0x0

    .line 47
    .local v14, "secondLangInsertIndex":I
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v11, "modes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 51
    .local v9, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    :cond_2
    iget-object v10, v9, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 54
    .local v10, "modeName":Ljava/lang/String;
    new-instance v12, Lcom/nuance/swype/input/InputMethods$InputMode;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v12, v9, v0, v10, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v12, "newMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v12}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/BilingualLanguage;->mDefaultInputMode:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/nuance/swype/input/BilingualLanguage;->mDefaultInputMode:Ljava/lang/String;

    .line 64
    :cond_3
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 33
    .end local v8    # "firstLangDefault":Ljava/lang/String;
    .end local v9    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v10    # "modeName":Ljava/lang/String;
    .end local v11    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "newMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v13    # "newModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    .end local v14    # "secondLangInsertIndex":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 70
    .restart local v8    # "firstLangDefault":Ljava/lang/String;
    .restart local v11    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "newModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    .restart local v14    # "secondLangInsertIndex":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 73
    .restart local v9    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v10

    .line 74
    .restart local v10    # "modeName":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "secondLangInsertIndex":I
    .local v15, "secondLangInsertIndex":I
    new-instance v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secondary_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v9, v0, v3, v4}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v14, v15

    .end local v15    # "secondLangInsertIndex":I
    .restart local v14    # "secondLangInsertIndex":I
    goto :goto_2

    .line 82
    .end local v9    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v10    # "modeName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/BilingualLanguage;->mDefaultInputMode:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 83
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    .line 84
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 85
    iget-object v10, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 86
    .restart local v10    # "modeName":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 87
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/nuance/swype/input/BilingualLanguage;->mDefaultInputMode:Ljava/lang/String;

    goto :goto_3

    .line 93
    .end local v10    # "modeName":Ljava/lang/String;
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 94
    .restart local v9    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/BilingualLanguage;->addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V

    goto :goto_4

    .line 96
    .end local v9    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_a
    return-void
.end method

.method public static getLanguageId(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 2
    .param p0, "firstLang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p1, "secondLang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 170
    instance-of v0, p0, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v0, :cond_0

    .line 171
    check-cast p0, Lcom/nuance/swype/input/BilingualLanguage;

    .end local p0    # "firstLang":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object p0, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 173
    .restart local p0    # "firstLang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "languageId"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method protected getLocalizedDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLocalizedDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLocalizedDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getTerminalPunctuation()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "punctuation":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    :cond_2
    return-object v0
.end method

.method public isBilingualLanguage()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isCoreLanguage()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "input"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getCoreLanguageId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getDefaultInputMode(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/BilingualLanguage;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 10
    .param p1, "input"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "xt9InputMode"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getCoreLanguageId()I

    move-result v1

    .line 133
    .local v1, "firstLangID":I
    iget-object v3, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    .line 135
    .local v2, "secondLangID":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "coreId":I
    if-eq v0, v9, :cond_0

    .line 139
    move v1, v0

    .line 140
    sget-object v3, Lcom/nuance/swype/input/BilingualLanguage;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLanguage...first language is deprecated...deprecated languge id.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 144
    .end local v0    # "coreId":I
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 147
    .restart local v0    # "coreId":I
    if-eq v0, v9, :cond_1

    .line 148
    move v2, v0

    .line 149
    sget-object v3, Lcom/nuance/swype/input/BilingualLanguage;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLanguage...second language is deprecated...deprecated languge id.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    .end local v0    # "coreId":I
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/BilingualLanguage;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLanguage...first core languge id.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/BilingualLanguage;->getCoreLanguageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "..second core languge id.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 154
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 153
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1, v1, v2, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    return-object v3
.end method

.method public usesLanguage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/BilingualLanguage;->firstLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/BilingualLanguage;->secondLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
