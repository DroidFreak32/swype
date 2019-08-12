.class final Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;
.super Ljava/lang/Object;
.source "DragonDictationLanguageListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;->c:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;)I
    .locals 3
    .param p1, "lhs"    # Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;
    .param p2, "rhs"    # Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;->c:Ljava/text/Collator;

    iget-object v1, p1, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    iget-object v2, p2, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;->compare(Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;)I

    move-result v0

    return v0
.end method
