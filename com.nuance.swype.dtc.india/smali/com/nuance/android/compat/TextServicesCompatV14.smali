.class public Lcom/nuance/android/compat/TextServicesCompatV14;
.super Ljava/lang/Object;
.source "TextServicesCompatV14.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
.implements Lcom/nuance/android/compat/TextServicesInfo;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpellCheckerEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    const-string/jumbo v4, "textservices"

    .line 27
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    .line 29
    .local v1, "tsm":Landroid/view/textservice/TextServicesManager;
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1, v5, v5, p0, v2}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    .line 31
    .local v0, "scs":Landroid/view/textservice/SpellCheckerSession;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 38
    .end local v0    # "scs":Landroid/view/textservice/SpellCheckerSession;
    :goto_0
    return v2

    .restart local v0    # "scs":Landroid/view/textservice/SpellCheckerSession;
    :cond_0
    move v2, v3

    .line 35
    goto :goto_0

    .end local v0    # "scs":Landroid/view/textservice/SpellCheckerSession;
    :cond_1
    move v2, v3

    .line 38
    goto :goto_0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 0
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 16
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 21
    return-void
.end method
