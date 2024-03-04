.class public interface abstract Ltwitter4j/TwitterResponse;
.super Ljava/lang/Object;
.source "TwitterResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NONE:I = 0x0

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x2

.field public static final READ_WRITE_DIRECTMESSAGES:I = 0x3


# virtual methods
.method public abstract getAccessLevel()I
.end method

.method public abstract getRateLimitStatus()Ltwitter4j/RateLimitStatus;
.end method
