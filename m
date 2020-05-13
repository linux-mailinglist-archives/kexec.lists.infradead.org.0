Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F97E1D1AA9
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 18:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1Idu6xwoyEDwOtjO5EXdDLvX8Jvz8AkrQRFUnrBF8Q=; b=kzRNRU5dTcLt1D
	cnZKyX4yIBx5dmFfXs0vlJjUvBqfmoEH+5W2gfL0hEF7kxzSv5MpHAR3sDL1EzoYiJB3SrN/s2dUL
	VZcLZec4Wz6XifoGNU/QDgEzHoMxiZ1k7k5QV3Sfw3ATTmmCRwI+taEaw+kCDUPIohPAyonQbYSiW
	naVsw9SjYhN9lW+5Zm40AjeFlDWIl6rsdeKayQX3+W40GJc2cBXCE6hKoz5E+GuTH7pec5LSEgNb4
	fJG9y0DFrJGVLUrMc1ZwlamItfemWPlI2kjTh0Lb41IKI0488HltHhNrgITUUTgKT5J04xDGmZRuA
	YtDe88RDglQy0otSG9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtw7-00009m-I5; Wed, 13 May 2020 16:08:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtw4-000095-Ep
 for kexec@lists.infradead.org; Wed, 13 May 2020 16:08:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF3E9204EC;
 Wed, 13 May 2020 16:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589386124;
 bh=xENrYOLRKxUHJZrp+JmavDdZ/UKSb+Y8/NlbM/O49u0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jVnPnqCQzu6sKGo2G8yYkn+Wdx92oAedw+XTsq0coaVfDeYR2l8X1Vxy/fAGPSgb6
 CurZQ5dNws/E4yk1ZLz7Nc6lKg/ux80ax0X/dURotSB1dmXxAKoE/Lz3oMPmsidGGg
 6HybQ5/jV/tPjKUDq0k8a4H0PBYFTZkQ8wRTyqfQ=
Date: Wed, 13 May 2020 18:08:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH 3/3] fs: move kernel_read*() calls to its own symbol
 namespace
Message-ID: <20200513160841.GB1362525@kroah.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513152108.25669-4-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513152108.25669-4-mcgrof@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_090844_511651_0BD86C96 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:21:08PM +0000, Luis Chamberlain wrote:
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

I can't take patches without any changelog text at all, sorry.

greg k-h

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
