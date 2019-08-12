.class public Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerConfig.java"


# static fields
.field public static final CUSTOM_WORDS_SYNCHRONIZE_CURRENT_CHECKSUM:Ljava/lang/String; = "custom_words_synchronize_current_checksum"

.field private static final DEFAULT_ALGORITHM_ID:Ljava/lang/String; = "Random"

.field private static final DEFAULT_CHECKSUM:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Random"

    return-object v0
.end method

.method public static getCurrentChecksum(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getCurrentChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "0"

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "custom_words_synchronize_current_checksum"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNewChecksum(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getNewChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6
    .param p0, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 30
    if-nez p0, :cond_1

    .line 31
    const-string v0, "0"

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "newChecksum":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerConfig;->getCurrentChecksum(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setNewChecksum(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "custom_words_synchronize_current_checksum"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method
