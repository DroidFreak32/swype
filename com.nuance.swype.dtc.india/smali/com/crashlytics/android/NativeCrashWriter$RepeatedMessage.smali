.class final Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessage"
.end annotation


# instance fields
.field private final messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V
    .locals 2
    .param p1, "messages"    # [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .prologue
    const/4 v1, 0x0

    .line 122
    new-array v0, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 123
    iput-object p1, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .line 124
    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 6

    .prologue
    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, "size":I
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 137
    .local v3, "message":Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v3}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "message":Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    :cond_0
    return v4
.end method

.method public final write(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 4
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 129
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
