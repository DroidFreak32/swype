.class public Lcom/nuance/speech/Dictation$SpeechResult;
.super Ljava/lang/Object;
.source "Dictation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/Dictation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeechResult"
.end annotation


# instance fields
.field public final finalResult:Z

.field public final streaming:Z

.field public final text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/nuance/speech/Dictation;


# direct methods
.method public constructor <init>(Lcom/nuance/speech/Dictation;Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/speech/Dictation;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "streaming"    # Z
    .param p4, "finalResult"    # Z

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/speech/Dictation$SpeechResult;->this$0:Lcom/nuance/speech/Dictation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/nuance/speech/Dictation$SpeechResult;->text:Ljava/lang/CharSequence;

    .line 35
    iput-boolean p4, p0, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    .line 36
    iput-boolean p3, p0, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    .line 37
    return-void
.end method
