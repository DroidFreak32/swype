.class Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;
.super Ljava/lang/Object;
.source "RecognitionImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognition$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/RecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultImpl"
.end annotation


# instance fields
.field private final _score:I

.field private final _text:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;I)V
    .registers 4
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;->_text:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;->_score:I

    .line 28
    return-void
.end method


# virtual methods
.method public getScore()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;->_score:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;->_text:Ljava/lang/String;

    return-object v0
.end method
