Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965C71166AC
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 07:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HRUSd8iYCbRBJ+jt5FAT7lOAxseD0/2N+KSWyj39+c=; b=Cxt1cLcQwLdyHM
	F/WkF+bh56enBkcQG+EX11aOfTZoilRE18nX/WgIz8bscxr7sbfi4JlTtDVTIOPeCqa0o2cN/o78/
	oRdyIGkEsxVLINleBmdZj2EuptfeiHA1AG2U/xlBf5WbCqFlPbiL43qTlfPxDoxkhrs+B7u0GKUsv
	PUrKU/TkxHgNBAqGFKa4NpkSEyYFaA18QttWeSTDAhoKG7pD0ti7b9DjUTl+DuyDhtAltpGsFKBXj
	Wi9DRrfurNSiGxISDpyk9AHmDCsUchjUhldxiS+xmXEBPCYKuxEgoKUzpX6kL1SRbzEFYWozwmTdG
	+GijIy88BxpojaykK00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieC9w-0007oy-5J; Mon, 09 Dec 2019 06:04:40 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieC9r-0007nz-FC
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 06:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575871471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AiyF5HzMxqouy7pn1ozziQ4mklZX+y4DCafQG/xdvQk=;
 b=QWCax3q1ReItftOgeSIN9X0uL8BG5DLW2seR3kE1kb3joVRvU8rL26FtfZxEhgA4ZP5my6
 WPy35pIPybUPMk/Yxp6gZ0RI538xh/DZMt36DgtkYamP0J9tT3zh1adxu5XSDW6AHShnXZ
 Z9Q3V77Kefw9TYkW/EpAswo2Nu0TVsQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-NJ2a3R7KNkiq3OkcPE7TSg-1; Mon, 09 Dec 2019 01:04:29 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42EF58024FC;
 Mon,  9 Dec 2019 06:04:28 +0000 (UTC)
Received: from [10.72.8.34] (ovpn-8-34.pek2.redhat.com [10.72.8.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C42015C21A;
 Mon,  9 Dec 2019 06:04:26 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
References: <1574989745-5262-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359725A@BPXM09GP.gisp.nec.co.jp>
 <6dc65874-803a-10f3-dc42-d8704323ea0b@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359773A@BPXM09GP.gisp.nec.co.jp>
From: piliu <piliu@redhat.com>
Message-ID: <b5577cc9-20f9-4676-2596-b8444e3ab8d6@redhat.com>
Date: Mon, 9 Dec 2019 14:04:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC0359773A@BPXM09GP.gisp.nec.co.jp>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: NJ2a3R7KNkiq3OkcPE7TSg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_220435_587604_682A3584 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 12/07/2019 12:28 AM, Kazuhito Hagio wrote:
>> -----Original Message-----
>>
>> On 12/05/2019 06:36 AM, Kazuhito Hagio wrote:
>>> Hi Pingfan,
>>>
>>> Thank you for the patch.
>>>
>>>> -----Original Message-----
>>>> since the following commit, -lebl has been removed from elfutils.
>>>> commit b833c731359af12af9f16bcb621b3cdc170eafbc
>>>> Author: Mark Wielaard <mark@klomp.org>
>>>> Date:   Thu Aug 29 23:34:11 2019 +0200
>>>>
>>>>     libebl: Don't install libebl.a, libebl.h and remove backends from spec.
>>>>
>>>>     All archive members from libebl.a are now in libdw.a. We don't generate
>>>>     separate backend shared libraries anymore. So remove them from the
>>>>     elfutils.spec file.
>>>>
>>>>     Signed-off-by: Mark Wielaard <mark@klomp.org>
>>>>
>>>> So remove it from LIBS for makedumpfile
>>>
>>> It seems that this is ok with the latest elfutils, but with older ones?
>>> Is it possible to remove -lebl when elfutils does not have libebl.a?
>> I have no idea about it for now. The method to check version depends on
>> distribution. Is it doable by checking /usr/lib64/libebl ?
> 
> We have 'try-run' function written by Petr in the Makefile, which checks
> if clock_gettime() requies -lrt.  How about utilizing it like this?
> 
> diff --git a/Makefile b/Makefile
> index 1fdb6286e85d..d4d1fb563209 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
>  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
>  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
>  
> -LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
> +LIBS = -ldw -lbz2 -ldl -lelf -lz
>  ifneq ($(LINKTYPE), dynamic)
>  LIBS := -static $(LIBS)
>  endif
> @@ -79,6 +79,11 @@ LINK_TEST_PROG="int clock_gettime(); int main(){ return clock_gettime(); }"
>  LIBS := $(LIBS) $(call try-run,\
>  	echo $(LINK_TEST_PROG) | $(CC) $(CFLAGS) -o "$$TMP" -x c -,,-lrt)
>  
> +# elfutils-0.178 or later does not install libebl.a.
> +LINK_TEST_PROG="int main() { return 0; }"
> +LIBS := $(LIBS) $(call try-run,\
> +	echo $(LINK_TEST_PROG) | $(CC) -o "$$TMP" -x c - -lebl,-lebl,)
> +
>  all: makedumpfile
>  
>  $(OBJ_PART): $(SRC_PART)
> 
> 
> If libebl.a does not exist (gcc with -lebl fails), it will not append
> -lebl to LIBS.
> 
Yes, it sounds a good idea.

Should I sumbit another patch or you will do by yourself?

Thanks,
Pingfan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
