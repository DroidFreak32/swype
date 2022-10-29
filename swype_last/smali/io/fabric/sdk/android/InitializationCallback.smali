.class public interface abstract Lio/fabric/sdk/android/InitializationCallback;
.super Ljava/lang/Object;
.source "InitializationCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/InitializationCallback$Empty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/fabric/sdk/android/InitializationCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8
    new-instance v0, Lio/fabric/sdk/android/InitializationCallback$Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/InitializationCallback$Empty;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    return-void
.end method


# virtual methods
.method public abstract failure(Ljava/lang/Exception;)V
.end method

.method public abstract success$5d527811()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method
