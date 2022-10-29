.class public Lcom/nuance/swype/input/OemLdbWordsManager;
.super Ljava/lang/Object;
.source "OemLdbWordsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    }
.end annotation


# static fields
.field public static final SETTING_OME_CUSTOMIZED_LANGUAGE:Ljava/lang/String; = "oem_customized_language"

.field private static final SETTING_OME_CUSTOMIZED_LANGUAGE_DELIMETER:Ljava/lang/String; = ","

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mInstance:Lcom/nuance/swype/input/OemLdbWordsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedLanguageCache:[Ljava/lang/String;

.field protected mCustomizedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLlangWordsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string/jumbo v0, "OemLdbWordsManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    .line 63
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/OemLdbWordsManager;->readCustimzedWords(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/OemLdbWordsManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/nuance/swype/input/OemLdbWordsManager;->mInstance:Lcom/nuance/swype/input/OemLdbWordsManager;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/nuance/swype/input/OemLdbWordsManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/OemLdbWordsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/OemLdbWordsManager;->mInstance:Lcom/nuance/swype/input/OemLdbWordsManager;

    .line 70
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/OemLdbWordsManager;->mInstance:Lcom/nuance/swype/input/OemLdbWordsManager;

    return-object v0
.end method

.method private getCustomizedLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    if-nez v1, :cond_36

    .line 188
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string/jumbo v2, "oem_customized_language"

    const-string/jumbo v3, "%x"

    invoke-virtual {v1, v2, p2, v3}, Lcom/nuance/swype/input/AppPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "languageSetting":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getRecentLanguages...languageSetting..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    .line 192
    .end local v0    # "languageSetting":Ljava/lang/String;
    :cond_36
    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    return-object v1
.end method

.method private setCustomizedLanguages(Landroid/content/Context;Ljava/util/List;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "newmCustomizedLanguages":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "langId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 201
    .end local v0    # "langId":Ljava/lang/String;
    :cond_1f
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    const-string/jumbo v4, "oem_customized_language"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, "size":I
    iget-object v3, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v2, :cond_3e

    .line 207
    :cond_3a
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    .line 209
    :cond_3e
    iget-object v3, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguageCache:[Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public AddOemLdbWordsForAlpha(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;I)V
    .registers 14
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "languageId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v5, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 184
    :cond_a
    :goto_a
    return-void

    .line 136
    :cond_b
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/OemLdbWordsManager;->isLanguageCustomized(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 140
    iget-object v5, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;

    .line 141
    .local v4, "wordPairs":Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    if-eqz v4, :cond_a

    .line 147
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8b

    .line 148
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 149
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    if-ge v0, v2, :cond_8b

    .line 150
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 152
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "empty string found for add new words, position = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 149
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 156
    :cond_5a
    invoke-virtual {p1, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAddNewWordForLanguage(Ljava/lang/String;I)Z

    move-result v1

    .line 157
    .local v1, "ret":Z
    if-nez v1, :cond_69

    .line 158
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v6, "dlmAddNewWordForLanguage failed"

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_a

    .line 161
    :cond_69
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " added "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_57

    .line 164
    .end local v0    # "i":I
    .end local v1    # "ret":Z
    .end local v2    # "size":I
    .end local v3    # "word":Ljava/lang/String;
    :cond_8b
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_109

    .line 165
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 166
    .restart local v2    # "size":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9a
    if-ge v0, v2, :cond_109

    .line 167
    iget-object v5, v4, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 169
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "empty string found for removed words, position = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 166
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 173
    :cond_ca
    invoke-virtual {p1, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAddBlackWordForLanguage(Ljava/lang/String;I)Z

    move-result v1

    .line 174
    .restart local v1    # "ret":Z
    if-nez v1, :cond_da

    .line 175
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v6, "dlmAddBlackWordForLanguage failed"

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 178
    :cond_da
    sget-object v5, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " removed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "  languageId:"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_c7

    .line 182
    .end local v0    # "i":I
    .end local v1    # "ret":Z
    .end local v2    # "size":I
    .end local v3    # "word":Ljava/lang/String;
    :cond_109
    iget-object v5, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0}, Lcom/nuance/swype/input/OemLdbWordsManager;->savemCustomizedLanguages()V

    goto/16 :goto_a
.end method

.method public isLanguageCustomized(I)Z
    .registers 7
    .param p1, "languageId"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 214
    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/OemLdbWordsManager;->getCustomizedLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 215
    array-length v3, v2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_25

    aget-object v0, v2, v1

    .line 216
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 219
    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 222
    .end local v0    # "language":Ljava/lang/String;
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected readCustimzedWords(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$xml;->oem_customized_words:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 75
    .local v7, "xmlparser":Landroid/content/res/XmlResourceParser;
    iget-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    if-eqz v8, :cond_14

    .line 76
    iget-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 78
    :cond_14
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    .line 80
    const/4 v0, -0x1

    .line 84
    .local v0, "currentLangId":I
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v8, 0x1

    if-eq v2, v8, :cond_bc

    .line 85
    const/4 v8, 0x2

    if-ne v2, v8, :cond_a9

    .line 86
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v8, "language"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_30} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_9a
    .catchall {:try_start_1c .. :try_end_30} :catchall_c2

    move-result v8

    if-eqz v8, :cond_51

    .line 89
    const/4 v8, 0x0

    :try_start_34
    const-string/jumbo v9, "id"

    invoke-interface {v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    iget-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;-><init>(Lcom/nuance/swype/input/OemLdbWordsManager;)V

    invoke-virtual {v8, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_4d} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_4d} :catch_6e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4d} :catch_9a
    .catchall {:try_start_34 .. :try_end_4d} :catchall_c2

    goto :goto_1c

    .line 93
    :catch_4e
    move-exception v8

    const/4 v0, -0x1

    .line 94
    goto :goto_1c

    .line 96
    :cond_51
    :try_start_51
    const-string/jumbo v8, "newwords"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 97
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "newWords":Ljava/lang/String;
    if-eq v0, v10, :cond_1c

    .line 99
    iget-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;

    .line 100
    .local v1, "customizedWord":Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    if-eqz v1, :cond_1c

    .line 101
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->setNewWords(Ljava/lang/String;)V
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_6d} :catch_6e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6d} :catch_9a
    .catchall {:try_start_51 .. :try_end_6d} :catchall_c2

    goto :goto_1c

    .line 121
    .end local v1    # "customizedWord":Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    .end local v2    # "event":I
    .end local v4    # "newWords":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :catch_6e
    move-exception v3

    .line 122
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6f
    sget-object v8, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "readCustimzedWords...XmlPullParserException: "

    invoke-interface {v8, v9, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_c2

    .line 126
    if-eqz v7, :cond_7c

    .line 127
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    .end local v3    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_7c
    :goto_7c
    return-void

    .line 104
    .restart local v2    # "event":I
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    const-string/jumbo v8, "removedwords"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 105
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "removedWords":Ljava/lang/String;
    if-eq v0, v10, :cond_1c

    .line 107
    iget-object v8, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mLlangWordsMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;

    .line 108
    .restart local v1    # "customizedWord":Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    if-eqz v1, :cond_1c

    .line 109
    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->setRemovedWords(Ljava/lang/String;)V
    :try_end_99
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_99} :catch_6e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_99} :catch_9a
    .catchall {:try_start_7d .. :try_end_99} :catchall_c2

    goto :goto_1c

    .line 123
    .end local v1    # "customizedWord":Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
    .end local v2    # "event":I
    .end local v5    # "removedWords":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :catch_9a
    move-exception v3

    .line 124
    .local v3, "ex":Ljava/io/IOException;
    :try_start_9b
    sget-object v8, Lcom/nuance/swype/input/OemLdbWordsManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "readCustimzedWords...IOException: "

    invoke-interface {v8, v9, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_c2

    .line 126
    if-eqz v7, :cond_7c

    .line 127
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7c

    .line 114
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v2    # "event":I
    :cond_a9
    const/4 v8, 0x3

    if-ne v2, v8, :cond_1c

    .line 115
    :try_start_ac
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "tag":Ljava/lang/String;
    const-string/jumbo v8, "language"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_b6} :catch_6e
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b6} :catch_9a
    .catchall {:try_start_ac .. :try_end_b6} :catchall_c2

    move-result v8

    if-eqz v8, :cond_1c

    .line 117
    const/4 v0, -0x1

    goto/16 :goto_1c

    .line 126
    .end local v6    # "tag":Ljava/lang/String;
    :cond_bc
    if-eqz v7, :cond_7c

    .line 127
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7c

    .line 126
    .end local v2    # "event":I
    :catchall_c2
    move-exception v8

    if-eqz v7, :cond_c8

    .line 127
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c8
    throw v8
.end method

.method public savemCustomizedLanguages()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/OemLdbWordsManager;->mCustomizedLanguages:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/OemLdbWordsManager;->setCustomizedLanguages(Landroid/content/Context;Ljava/util/List;)V

    .line 227
    return-void
.end method
