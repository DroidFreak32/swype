.class public Ljp/co/omronsoft/openwnn/WnnClause;
.super Ljp/co/omronsoft/openwnn/WnnWord;
.source "WnnClause.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;I)V
    .locals 0
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "stroke"    # Ljava/lang/String;
    .param p3, "posTag"    # Ljp/co/omronsoft/openwnn/WnnPOS;
    .param p4, "frequency"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;)V
    .locals 7
    .param p1, "stroke"    # Ljava/lang/String;
    .param p2, "stem"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 51
    iget v1, p2, Ljp/co/omronsoft/openwnn/WnnWord;->id:I

    iget-object v2, p2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    iget-object v4, p2, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v5, p2, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)V
    .locals 7
    .param p1, "stroke"    # Ljava/lang/String;
    .param p2, "stem"    # Ljp/co/omronsoft/openwnn/WnnWord;
    .param p3, "fzk"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 65
    iget v1, p2, Ljp/co/omronsoft/openwnn/WnnWord;->id:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v0, p2, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v0, v0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    iget-object v3, p3, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v3, v3, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-direct {v4, v0, v3}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>(II)V

    iget v5, p2, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 67
    return-void
.end method
