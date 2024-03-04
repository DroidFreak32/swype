.class public interface abstract Ltwitter4j/MediaEntity$Size;
.super Ljava/lang/Object;
.source "MediaEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/MediaEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Size"
.end annotation


# static fields
.field public static final CROP:I = 0x65

.field public static final FIT:I = 0x64

.field public static final LARGE:Ljava/lang/Integer;

.field public static final MEDIUM:Ljava/lang/Integer;

.field public static final SMALL:Ljava/lang/Integer;

.field public static final THUMB:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    .line 57
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getResize()I
.end method

.method public abstract getWidth()I
.end method
