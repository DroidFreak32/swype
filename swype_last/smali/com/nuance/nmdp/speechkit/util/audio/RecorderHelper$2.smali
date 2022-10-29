.class Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;
.super Ljava/lang/Object;
.source "RecorderHelper.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->createRecordListener()Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _recorderStarted:Z

.field private _stopReason:I

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 352
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    .line 354
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_recorderStarted:Z

    return-void
.end method

.method private handleStop()V
    .registers 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$300(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 360
    :try_start_7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopped:Z
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$402(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Z)Z

    .line 363
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$500(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 365
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_stopSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$300(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 366
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const/4 v2, 0x0

    # setter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_waitingForStop:Z
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$502(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;Z)Z

    .line 368
    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method public recorderUpdate(Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "recorder"    # Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "eventData"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_recorder:Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$600(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;

    move-result-object v0

    if-eq p1, v0, :cond_26

    .line 375
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " received for invalid recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .end local p3    # "eventData":Ljava/lang/Object;
    :cond_25
    :goto_25
    return-void

    .line 378
    .restart local p3    # "eventData":Ljava/lang/Object;
    :cond_26
    const-string/jumbo v0, "BUFFER_RECORDED"

    if-ne p2, v0, :cond_45

    .line 379
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_25

    .line 381
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$800(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$700(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v1

    check-cast p3, Ljava/lang/Float;

    .end local p3    # "eventData":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->signalEnergyUpdate(Ljava/lang/Object;F)V

    goto :goto_25

    .line 384
    .restart local p3    # "eventData":Ljava/lang/Object;
    :cond_45
    const-string/jumbo v0, "STARTED"

    if-ne p2, v0, :cond_5c

    .line 385
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_recorderStarted:Z

    .line 386
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$800(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$700(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->started(Ljava/lang/Object;)V

    goto :goto_25

    .line 388
    :cond_5c
    const-string/jumbo v0, "STOPPED"

    if-ne p2, v0, :cond_7e

    .line 389
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const-string/jumbo v1, "Recorder stopped"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->handleStop()V

    .line 391
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$800(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$700(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->stopped(Ljava/lang/Object;I)V

    goto :goto_25

    .line 393
    :cond_7e
    const-string/jumbo v0, "RECORD_ERROR"

    if-ne p2, v0, :cond_a8

    .line 394
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const-string/jumbo v1, "Recorder error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    .line 397
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_recorderStarted:Z

    if-nez v0, :cond_25

    .line 400
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->handleStop()V

    .line 401
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_listener:Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$800(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    # getter for: Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->access$700(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;->stopped(Ljava/lang/Object;I)V

    goto/16 :goto_25

    .line 405
    :cond_a8
    const-string/jumbo v0, "NO_SPEECH"

    if-ne p2, v0, :cond_b9

    .line 406
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const-string/jumbo v1, "Recorder event (no speech)"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iput v2, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    goto/16 :goto_25

    .line 409
    :cond_b9
    const-string/jumbo v0, "END_OF_SPEECH"

    if-ne p2, v0, :cond_cb

    .line 410
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const-string/jumbo v1, "Recorder event (end of speech)"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    goto/16 :goto_25

    .line 413
    :cond_cb
    const-string/jumbo v0, "CAPTURE_TIMEOUT"

    if-ne p2, v0, :cond_25

    .line 414
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    const-string/jumbo v1, "Recorder event (timeout)"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$2;->_stopReason:I

    goto/16 :goto_25
.end method
