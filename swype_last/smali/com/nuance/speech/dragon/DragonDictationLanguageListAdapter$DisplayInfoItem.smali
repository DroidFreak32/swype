.class Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;
.super Ljava/lang/Object;
.source "DragonDictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
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
    .registers 3
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    .line 50
    return-void
.end method
