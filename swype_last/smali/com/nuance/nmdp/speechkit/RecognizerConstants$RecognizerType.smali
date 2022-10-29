.class public Lcom/nuance/nmdp/speechkit/RecognizerConstants$RecognizerType;
.super Ljava/lang/Object;
.source "RecognizerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/RecognizerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizerType"
.end annotation


# static fields
.field public static final Dictation:Ljava/lang/String; = "dictation"

.field public static final Search:Ljava/lang/String; = "websearch"

.field public static final Tv:Ljava/lang/String; = "DTV"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
