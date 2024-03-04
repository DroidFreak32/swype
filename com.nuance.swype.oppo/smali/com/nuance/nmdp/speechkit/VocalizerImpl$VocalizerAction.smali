.class Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
.super Ljava/lang/Object;
.source "VocalizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/VocalizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VocalizerAction"
.end annotation


# instance fields
.field private final Context:Ljava/lang/Object;

.field private final IsMarkup:Z

.field private final Language:Ljava/lang/String;

.field private final Text:Ljava/lang/String;

.field private final Voice:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "markup"    # Z
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "context"    # Ljava/lang/Object;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->IsMarkup:Z

    .line 32
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Voice:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Language:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->IsMarkup:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Voice:Ljava/lang/String;

    return-object v0
.end method
