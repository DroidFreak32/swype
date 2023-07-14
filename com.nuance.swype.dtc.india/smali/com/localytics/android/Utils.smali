.class Lcom/localytics/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Utils$Mapper;
    }
.end annotation


# static fields
.field private static final FILE_COPY_BUFFER_SIZE:J = 0x100000L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/localytics/android/Utils;->validateDirectoryRequirements(Ljava/io/File;Ljava/io/File;)V

    .line 219
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 220
    .local v5, "srcFiles":[Ljava/io/File;
    if-nez v5, :cond_0

    .line 222
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to list files from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 229
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to create directory "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 234
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exists but it\'s not a directory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    :cond_2
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v5

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 239
    .local v4, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    invoke-static {v4, v1}, Lcom/localytics/android/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-static {v4, v1}, Lcom/localytics/android/Utils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 249
    .end local v1    # "destFile":Ljava/io/File;
    .end local v4    # "srcFile":Ljava/io/File;
    :cond_4
    return-void
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 18
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static/range {p0 .. p1}, Lcom/localytics/android/Utils;->validateFileRequirements(Ljava/io/File;Ljava/io/File;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 154
    .local v15, "parentDir":Ljava/io/File;
    if-eqz v15, :cond_0

    .line 156
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Parent directory "

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v17, "cannot be created"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_0
    const/4 v3, 0x0

    .line 163
    .local v3, "src":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 164
    .local v2, "dest":Ljava/nio/channels/FileChannel;
    const/4 v11, 0x0

    .line 165
    .local v11, "fis":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 168
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 171
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 173
    const-wide/16 v4, 0x0

    .line 174
    .local v4, "pos":J
    :goto_0
    const-wide/32 v6, 0x100000

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v8

    .local v8, "copied":J
    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-lez v6, :cond_1

    .line 176
    add-long/2addr v4, v8

    goto :goto_0

    .line 181
    :cond_1
    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 185
    :cond_2
    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 191
    :cond_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 195
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-static/range {p0 .. p0}, Lcom/localytics/android/Utils;->getMD5CheckSum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, "srcCheckSum":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/localytics/android/Utils;->getMD5CheckSum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "dstCheckSum":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 203
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Failed to get checksum for source file "

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    .end local v4    # "pos":J
    .end local v8    # "copied":J
    .end local v10    # "dstCheckSum":Ljava/lang/String;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "srcCheckSum":Ljava/lang/String;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 185
    :cond_4
    if-eqz v2, :cond_5

    .line 187
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 189
    :cond_5
    if-eqz v11, :cond_6

    .line 191
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 193
    :cond_6
    if-eqz v13, :cond_7

    .line 195
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v6

    .line 205
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "pos":J
    .restart local v8    # "copied":J
    .restart local v10    # "dstCheckSum":Ljava/lang/String;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "srcCheckSum":Ljava/lang/String;
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 207
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Failed to get checksum for destination file "

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 211
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v17, " and "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v17, " have different checksum"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_a
    return-void

    .line 181
    .end local v4    # "pos":J
    .end local v8    # "copied":J
    .end local v10    # "dstCheckSum":Ljava/lang/String;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "srcCheckSum":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static decompressZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "zipFileDir"    # Ljava/lang/String;
    .param p1, "unzipFileDir"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 28
    const/4 v6, 0x0

    .line 31
    .local v6, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .local v7, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x2000

    :try_start_1
    new-array v0, v10, [B

    .line 37
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_5

    .line 40
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "entryName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 43
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_0

    .line 46
    const-string/jumbo v10, "Could not create directory %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "buffer":[B
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 66
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    if-eqz v6, :cond_1

    .line 75
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    move v8, v9

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v8

    .line 51
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, "fos":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v7, v0, v10, v11}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    .local v1, "byteRead":I
    if-lez v1, :cond_4

    .line 56
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 71
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .line 73
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_4
    if-eqz v6, :cond_3

    .line 75
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 81
    :cond_3
    throw v8

    .line 59
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 60
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 75
    .end local v1    # "byteRead":I
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v6, v7

    .line 85
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 78
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    move v8, v9

    .line 81
    goto :goto_2

    .line 78
    .end local v0    # "buffer":[B
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    .line 80
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 81
    goto :goto_2

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 81
    goto :goto_2

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_4

    .line 64
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method static deleteFile(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 261
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 263
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 265
    invoke-static {v4}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    const-string/jumbo v4, "Delete %s failed."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static dpToPx(ILandroid/content/Context;)I
    .locals 2
    .param p0, "dp"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    int-to-float v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static getFileCheckSum(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 109
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v8, 0x4000

    :try_start_1
    new-array v0, v8, [B

    .line 114
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 116
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 119
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 121
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const-string/jumbo v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v3, :cond_0

    .line 130
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v8

    .line 130
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "read":I
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    :goto_3
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 140
    .local v1, "bytes":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v8, v1

    if-ge v5, v8, :cond_3

    .line 143
    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    add-int/lit16 v8, v8, 0x100

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 132
    .end local v1    # "bytes":[B
    .end local v5    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 134
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Caught IOException"

    invoke-static {v8, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 132
    .end local v0    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 134
    const-string/jumbo v9, "Caught IOException"

    invoke-static {v9, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_2

    .line 130
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 135
    :cond_2
    :goto_6
    throw v8

    .line 132
    :catch_3
    move-exception v2

    .line 134
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "Caught IOException"

    invoke-static {v9, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "i":I
    .restart local v6    # "read":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 126
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "i":I
    .end local v6    # "read":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 119
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method static getMD5CheckSum(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 93
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .local v1, "md5Digest":Ljava/security/MessageDigest;
    invoke-static {v1, p0}, Lcom/localytics/android/Utils;->getFileCheckSum(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "md5Digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "Caught NoSuchAlgorithmException"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method static map(Ljava/util/Collection;Ljava/util/Collection;Lcom/localytics/android/Utils$Mapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TK;>;",
            "Lcom/localytics/android/Utils$Mapper",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "from":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "to":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p2, "mapper":Lcom/localytics/android/Utils$Mapper;, "Lcom/localytics/android/Utils$Mapper<TT;TK;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Lcom/localytics/android/Utils$Mapper;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method private static validateDirectoryRequirements(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {p0, p1}, Lcom/localytics/android/Utils;->validateFileRequirements(Ljava/io/File;Ljava/io/File;)V

    .line 298
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Source file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exists but it\'s not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t copy because source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and dest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " directory are same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t copy the source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " into itself"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    return-void
.end method

.method private static validateFileRequirements(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Source file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    if-nez p1, :cond_1

    .line 285
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Dest file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Source file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_2
    return-void
.end method
