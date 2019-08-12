.class public Ljp/co/omronsoft/openwnn/WnnWord;
.super Ljava/lang/Object;
.source "WnnWord.java"


# instance fields
.field public attribute:I

.field public candidate:Ljava/lang/String;

.field public frequency:I

.field public id:I

.field public partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

.field public stroke:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v2, ""

    const-string v3, ""

    new-instance v4, Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>()V

    move-object v0, p0

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "stroke"    # Ljava/lang/String;
    .param p4, "posTag"    # Ljp/co/omronsoft/openwnn/WnnPOS;
    .param p5, "frequency"    # I

    .prologue
    .line 117
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "stroke"    # Ljava/lang/String;
    .param p4, "posTag"    # Ljp/co/omronsoft/openwnn/WnnPOS;
    .param p5, "frequency"    # I
    .param p6, "attribute"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Ljp/co/omronsoft/openwnn/WnnWord;->id:I

    .line 139
    iput-object p2, p0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 141
    iput p5, p0, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    .line 142
    iput-object p4, p0, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 143
    iput p6, p0, Ljp/co/omronsoft/openwnn/WnnWord;->attribute:I

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "stroke"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "stroke"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "stroke"    # Ljava/lang/String;
    .param p3, "posTag"    # Ljp/co/omronsoft/openwnn/WnnPOS;

    .prologue
    const/4 v1, 0x0

    .line 83
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;I)V
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "stroke"    # Ljava/lang/String;
    .param p3, "posTag"    # Ljp/co/omronsoft/openwnn/WnnPOS;
    .param p4, "frequency"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;II)V

    .line 100
    return-void
.end method
