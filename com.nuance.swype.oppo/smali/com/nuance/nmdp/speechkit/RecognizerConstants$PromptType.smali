.class public Lcom/nuance/nmdp/speechkit/RecognizerConstants$PromptType;
.super Ljava/lang/Object;
.source "RecognizerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/RecognizerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromptType"
.end annotation


# static fields
.field public static final ERROR:I = 0x3

.field public static final RECORDING_START:I = 0x0

.field public static final RECORDING_STOP:I = 0x1

.field public static final RESULT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
