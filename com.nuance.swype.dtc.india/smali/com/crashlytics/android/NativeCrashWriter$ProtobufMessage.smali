.class abstract Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProtobufMessage"
.end annotation


# instance fields
.field private final children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

.field private final tag:I


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "children"    # [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    .line 47
    iput-object p2, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .line 48
    return-void
.end method

.method private getSizeNoTag()I
    .locals 6

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getPropertiesSize()I

    move-result v4

    .line 69
    .local v4, "size":I
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 70
    .local v1, "child":Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "child":Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    :cond_0
    return v4
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    .line 57
    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public write(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 5
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v3, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 83
    invoke-direct {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 85
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 86
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 0
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method
