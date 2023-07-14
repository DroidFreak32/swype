.class public abstract Lcom/google/android/gms/internal/zzapp;
.super Lcom/google/android/gms/internal/zzapv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzapp",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzapv;"
    }
.end annotation


# instance fields
.field protected bjx:Lcom/google/android/gms/internal/zzapr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapv;-><init>()V

    return-void
.end method


# virtual methods
.method public aA()Lcom/google/android/gms/internal/zzapp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapv;->aB()Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapp;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzapt;->zza(Lcom/google/android/gms/internal/zzapp;Lcom/google/android/gms/internal/zzapp;)V

    return-object v0
.end method

.method public synthetic aB()Lcom/google/android/gms/internal/zzapv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapp;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapp;->aA()Lcom/google/android/gms/internal/zzapp;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 3000
    iget v1, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 0
    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v1, v1, v0

    .line 0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzapo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzapn;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzapn;->zzafp(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzapy;->zzagj(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v0

    sub-int v5, v0, v3

    .line 5000
    if-nez v5, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    .line 0
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/zzapx;

    invoke-direct {v3, p2, v0}, Lcom/google/android/gms/internal/zzapx;-><init>(I[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaps;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaps;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 7000
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzapr;->zzagh(I)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object v0, v1, v5

    .line 8000
    :cond_1
    :goto_3
    iget-object v0, v0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    const/4 v0, 0x1

    goto :goto_0

    .line 5000
    :cond_2
    new-array v0, v5, [B

    iget v6, p1, Lcom/google/android/gms/internal/zzapn;->bjn:I

    add-int/2addr v3, v6

    iget-object v6, p1, Lcom/google/android/gms/internal/zzapn;->buffer:[B

    invoke-static {v6, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 6000
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzapr;->zzagh(I)I

    move-result v5

    if-ltz v5, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v6, v6, v5

    sget-object v7, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    if-ne v6, v7, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, v5

    goto :goto_2

    .line 7000
    :cond_6
    xor-int/lit8 v5, v5, -0x1

    iget v6, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    if-ge v5, v6, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v6, v6, v5

    sget-object v7, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    if-ne v6, v7, :cond_7

    iget-object v2, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aput v4, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object v0, v1, v5

    goto :goto_3

    :cond_7
    iget v6, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    iget-object v7, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    array-length v7, v7

    if-lt v6, v7, :cond_8

    iget v6, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/zzapr;->idealIntArraySize(I)I

    move-result v6

    new-array v7, v6, [I

    new-array v6, v6, [Lcom/google/android/gms/internal/zzaps;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v9, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    array-length v9, v9

    invoke-static {v8, v2, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v9, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    array-length v9, v9

    invoke-static {v8, v2, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iput-object v6, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    :cond_8
    iget v2, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v2, v5

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v6, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    add-int/lit8 v7, v5, 0x1

    iget v8, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v8, v5

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    add-int/lit8 v7, v5, 0x1

    iget v8, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v8, v5

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aput v4, v2, v5

    iget-object v2, v1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object v0, v2, v5

    iget v2, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    goto/16 :goto_3
.end method

.method protected zzx()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 1000
    iget v2, v2, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 0
    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapp;->bjx:Lcom/google/android/gms/internal/zzapr;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v2, v2, v0

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaps;->zzx()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
