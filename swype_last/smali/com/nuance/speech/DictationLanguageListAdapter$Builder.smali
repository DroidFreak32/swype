.class public Lcom/nuance/speech/DictationLanguageListAdapter$Builder;
.super Ljava/lang/Object;
.source "DictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/DictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final displayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Builder;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Builder;->displayItems:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Builder;->displayItems:Ljava/util/List;

    new-instance v1, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    invoke-direct {v1, p1, p2}, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public build()Lcom/nuance/speech/DictationLanguageListAdapter;
    .registers 5

    .prologue
    .line 64
    new-instance v0, Lcom/nuance/speech/DictationLanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Builder;->displayItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/speech/DictationLanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/speech/DictationLanguageListAdapter$1;)V

    return-object v0
.end method
