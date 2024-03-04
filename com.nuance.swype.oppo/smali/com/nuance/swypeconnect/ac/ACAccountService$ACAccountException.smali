.class public final Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
.super Lcom/nuance/swypeconnect/ac/ACException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ACAccountException"
.end annotation


# static fields
.field public static final REASON_ACCOUNT_EXISTS:I = 0xcc

.field public static final REASON_ACCOUNT_LINKED:I = 0xcd

.field public static final REASON_INVALID_ACCOUNT:I = 0xc9

.field public static final REASON_INVALID_ACCOUNT_ID:I = 0xc8

.field public static final REASON_INVALID_ACCOUNT_TYPE:I = 0xca

.field public static final REASON_INVALID_DEVICE:I = 0xcb

.field public static final REASON_INVALID_DEVICE_NAME:I = 0xce

.field public static final REASON_INVALID_DEVICE_TYPE:I = 0xcf

.field public static final REASON_INVALID_VERIFICATION_CODE:I = 0xd0

.field private static final serialVersionUID:J = 0x64bb2f123d138fdbL


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(I)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
