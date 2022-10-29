.class Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;
.super Ljava/lang/Object;
.source "BinaryRecognitionResult.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognition$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultImpl"
.end annotation


# instance fields
.field private final _score:I

.field private final _text:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Ljava/lang/String;I)V
    .registers 4
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;->_text:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;->_score:I

    .line 32
    return-void
.end method


# virtual methods
.method public getScore()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;->_score:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;->_text:Ljava/lang/String;

    return-object v0
.end method
