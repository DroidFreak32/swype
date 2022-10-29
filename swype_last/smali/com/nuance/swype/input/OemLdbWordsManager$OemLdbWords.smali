.class Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;
.super Ljava/lang/Object;
.source "OemLdbWordsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/OemLdbWordsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemLdbWords"
.end annotation


# static fields
.field private static final WORD_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field public mNewWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemovedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swype/input/OemLdbWordsManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/OemLdbWordsManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/OemLdbWordsManager;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->this$0:Lcom/nuance/swype/input/OemLdbWordsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setNewWords(Ljava/lang/String;)V
    .registers 7
    .param p1, "newWords"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 27
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "splitedWords":[Ljava/lang/String;
    array-length v1, v2

    .line 31
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_2c

    .line 32
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 34
    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mNewWords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 36
    .end local v3    # "word":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method public setRemovedWords(Ljava/lang/String;)V
    .registers 7
    .param p1, "removedWords"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 40
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "splitedWords":[Ljava/lang/String;
    array-length v1, v2

    .line 44
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_2c

    .line 45
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 47
    iget-object v4, p0, Lcom/nuance/swype/input/OemLdbWordsManager$OemLdbWords;->mRemovedWords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 49
    .end local v3    # "word":Ljava/lang/String;
    :cond_2c
    return-void
.end method
