.class public Ljp/co/omronsoft/openwnn/WnnSentence;
.super Ljp/co/omronsoft/openwnn/WnnWord;
.source "WnnSentence.java"


# instance fields
.field public elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/openwnn/WnnClause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/openwnn/WnnClause;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "clauses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    const/4 v6, 0x0

    .line 40
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 41
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 42
    :cond_c
    iput v6, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 43
    const-string/jumbo v5, ""

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 44
    const-string/jumbo v5, ""

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 45
    iput v6, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 46
    new-instance v5, Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v5}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>()V

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 47
    iput v6, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    .line 77
    :goto_23
    return-void

    .line 49
    :cond_24
    iput-object p2, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/WnnClause;

    .line 52
    .local v3, "headClause":Ljp/co/omronsoft/openwnn/WnnClause;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4a

    .line 53
    iget v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->id:I

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 54
    iget-object v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 56
    iget v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 57
    iget-object v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 58
    iget v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->attribute:I

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    goto :goto_23

    .line 60
    :cond_4a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "candidate":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "ci":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/openwnn/WnnClause;

    .line 64
    .local v2, "clause":Ljp/co/omronsoft/openwnn/WnnClause;
    iget-object v5, v2, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_53

    .line 66
    .end local v2    # "clause":Ljp/co/omronsoft/openwnn/WnnClause;
    :cond_65
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/openwnn/WnnClause;

    .line 68
    .local v4, "lastClause":Ljp/co/omronsoft/openwnn/WnnClause;
    iget v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->id:I

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 71
    iget v5, v3, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 72
    new-instance v5, Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v6, v3, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v6, v6, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    iget-object v7, v4, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v7, v7, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-direct {v5, v6, v7}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>(II)V

    iput-object v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 74
    const/4 v5, 0x2

    iput v5, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    goto :goto_23
.end method

.method public constructor <init>(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnClause;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "clause"    # Ljp/co/omronsoft/openwnn/WnnClause;

    .prologue
    .line 87
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 88
    iget v0, p2, Ljp/co/omronsoft/openwnn/WnnClause;->id:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 89
    iget-object v0, p2, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 91
    iget v0, p2, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 92
    iget-object v0, p2, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 93
    iget v0, p2, Ljp/co/omronsoft/openwnn/WnnClause;->attribute:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public constructor <init>(Ljp/co/omronsoft/openwnn/WnnClause;Ljp/co/omronsoft/openwnn/WnnSentence;)V
    .registers 6
    .param p1, "head"    # Ljp/co/omronsoft/openwnn/WnnClause;
    .param p2, "tail"    # Ljp/co/omronsoft/openwnn/WnnSentence;

    .prologue
    .line 128
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 129
    if-nez p2, :cond_2a

    .line 131
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->id:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 132
    iget-object v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->stroke:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 134
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 135
    iget-object v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 136
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->attribute:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_29
    return-void

    .line 141
    :cond_2a
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->id:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnClause;->stroke:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 144
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    iget v1, p2, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    add-int/2addr v0, v1

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 145
    new-instance v0, Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v1, v1, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    iget-object v2, p2, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>(II)V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    .line 149
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    iget-object v1, p2, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_29
.end method

.method public constructor <init>(Ljp/co/omronsoft/openwnn/WnnSentence;Ljp/co/omronsoft/openwnn/WnnClause;)V
    .registers 6
    .param p1, "prev"    # Ljp/co/omronsoft/openwnn/WnnSentence;
    .param p2, "clause"    # Ljp/co/omronsoft/openwnn/WnnClause;

    .prologue
    .line 107
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 108
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->id:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->candidate:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Ljp/co/omronsoft/openwnn/WnnClause;->stroke:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->stroke:Ljava/lang/String;

    .line 111
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    iget v1, p2, Ljp/co/omronsoft/openwnn/WnnClause;->frequency:I

    add-int/2addr v0, v1

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->frequency:I

    .line 112
    new-instance v0, Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v1, v1, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    iget-object v2, p2, Ljp/co/omronsoft/openwnn/WnnClause;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-direct {v0, v1, v2}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>(II)V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 113
    iget v0, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    iput v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->attribute:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method
