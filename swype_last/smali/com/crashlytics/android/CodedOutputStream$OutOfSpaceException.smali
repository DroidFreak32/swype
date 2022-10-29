.class final Lcom/crashlytics/android/CodedOutputStream$OutOfSpaceException;
.super Ljava/io/IOException;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutOfSpaceException"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 719
    const-string/jumbo v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 721
    return-void
.end method
