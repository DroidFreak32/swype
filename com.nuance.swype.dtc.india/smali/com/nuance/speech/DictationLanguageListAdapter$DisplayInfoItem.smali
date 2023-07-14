.class Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;
.super Ljava/lang/Object;
.source "DictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/DictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayInfoItem"
.end annotation


# instance fields
.field final displayName:Ljava/lang/String;

.field final langName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    .line 48
    return-void
.end method
