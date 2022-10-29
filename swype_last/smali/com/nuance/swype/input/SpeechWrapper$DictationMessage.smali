.class Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictationMessage"
.end annotation


# instance fields
.field final callback:Lcom/nuance/swype/input/SpeechWrapper;

.field final data:Ljava/lang/Object;

.field final event:Lcom/nuance/speech/DictationEventListener$DictationEvent;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .registers 4
    .param p1, "cb"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p2, "e"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p3, "d"    # Ljava/lang/Object;

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->callback:Lcom/nuance/swype/input/SpeechWrapper;

    .line 698
    iput-object p2, p0, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->event:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 699
    iput-object p3, p0, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->data:Ljava/lang/Object;

    .line 700
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->callback:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;->handleDictationMsg(Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;)V

    .line 704
    return-void
.end method
