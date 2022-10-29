.class final Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;
.super Ljava/lang/Number;
.source "AndroidJsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringNumber"
.end annotation


# instance fields
.field private final encodedValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "encodedValue"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .registers 3

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final floatValue()F
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final intValue()I
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public final longValue()J
    .registers 3

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    return-object v0
.end method
