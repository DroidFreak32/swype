.class public Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$CustomWordsSynchronizerActionType;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWordsSynchronizerActionType"
.end annotation


# static fields
.field public static final ADD_CUSTOM_WORDS:I = 0x0

.field public static final CLEAR_ALL_CUSTOM_WORDS:I = 0x2

.field public static final DELETE_ALL_USER_INFORMATION:I = 0x3

.field public static final REMOVE_CUSTOM_WORDS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
