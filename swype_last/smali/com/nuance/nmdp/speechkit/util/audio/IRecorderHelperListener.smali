.class public interface abstract Lcom/nuance/nmdp/speechkit/util/audio/IRecorderHelperListener;
.super Ljava/lang/Object;
.source "IRecorderHelperListener.java"


# static fields
.field public static final STOPPED_END_OF_SPEECH:I = 0x2

.field public static final STOPPED_ERROR:I = 0x4

.field public static final STOPPED_MANUALLY:I = 0x0

.field public static final STOPPED_NO_SPEECH:I = 0x1

.field public static final STOPPED_TIMEOUT:I = 0x3


# virtual methods
.method public abstract signalEnergyUpdate(Ljava/lang/Object;F)V
.end method

.method public abstract started(Ljava/lang/Object;)V
.end method

.method public abstract stopped(Ljava/lang/Object;I)V
.end method
