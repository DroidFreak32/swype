.class public final Lio/fabric/sdk/android/InitializationCallback$Empty;
.super Ljava/lang/Object;
.source "InitializationCallback.java"

# interfaces
.implements Lio/fabric/sdk/android/InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/InitializationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/InitializationCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lio/fabric/sdk/android/InitializationCallback$Empty;-><init>()V

    return-void
.end method


# virtual methods
.method public final failure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 31
    return-void
.end method

.method public final success$5d527811()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method
