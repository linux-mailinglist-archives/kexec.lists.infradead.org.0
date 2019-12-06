Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0B0114C30
	for <lists+kexec@lfdr.de>; Fri,  6 Dec 2019 06:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ke1yGYFI3b9dvmt7Eqho0o+1rCuNrTl2L2dJ1Ukgz+o=; b=mYJzF6G8vX5QI4sN8+71sBUQaE
	bZI4F4VX4kvNd8uvi59Z9g7K4gtTmgz8DaGUCHdWQJF3p6K0IfeqDa+JVqxj+t5iKGUIdsfL06YfW
	9SXT8wIMLJlOP5xgcEpdujYMbtslod6qV6E1gbLxegdksrxmColONFBY97qOfnv1iLE5JgYHyth3N
	DfSdHYOa0niyEc0rp94s2+F6OPhznESttUSSESYY/jeVl0OaBMr5Ri8WQcWZJsFL7crsVaxciB7XH
	//38wPMnN5BnP7OSmiPvS2wnVGJ/FRRv/mKguEswtePkVZ8RLf6MeMZ/AKRKfM5W9+Jw+H0jjOkky
	Fz9HDfiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id6Zd-0001nT-4R; Fri, 06 Dec 2019 05:54:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id6ZZ-0001mr-M5
 for kexec@lists.infradead.org; Fri, 06 Dec 2019 05:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575611671;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1vcTko9lXKwdtbispH4xXZeWIs0TXZL6P3wUFHKnTX0=;
 b=cQENH9cxRJch5BPOzkudJauBKSpC+FA+h7YgYpnjT3vF6RhEMqxw3oujJ9mK1KL92zPkJ8
 xJYc3qXfufY3J8bQtYvWBpxnQnG9WpbOrzFKPwAthGnj7o4zUzugrO4uKlxRkd8PQ8ja7g
 7IxkjIO195hlhIK66SLjENdyiSa0/jo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-FhhkvlWkP5GJWav7lLy-3A-1; Fri, 06 Dec 2019 00:54:29 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B31A18543A0;
 Fri,  6 Dec 2019 05:54:28 +0000 (UTC)
Received: from [10.72.8.18] (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 838A060BF1;
 Fri,  6 Dec 2019 05:54:27 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <1574989745-5262-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359725A@BPXM09GP.gisp.nec.co.jp>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <6dc65874-803a-10f3-dc42-d8704323ea0b@redhat.com>
Date: Fri, 6 Dec 2019 13:54:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC0359725A@BPXM09GP.gisp.nec.co.jp>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: FhhkvlWkP5GJWav7lLy-3A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_215437_794321_84F3AD76 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 12/05/2019 06:36 AM, Kazuhito Hagio wrote:
> Hi Pingfan,
> 
> Thank you for the patch.
> 
>> -----Original Message-----
>> since the following commit, -lebl has been removed from elfutils.
>> commit b833c731359af12af9f16bcb621b3cdc170eafbc
>> Author: Mark Wielaard <mark@klomp.org>
>> Date:   Thu Aug 29 23:34:11 2019 +0200
>>
>>     libebl: Don't install libebl.a, libebl.h and remove backends from spec.
>>
>>     All archive members from libebl.a are now in libdw.a. We don't generate
>>     separate backend shared libraries anymore. So remove them from the
>>     elfutils.spec file.
>>
>>     Signed-off-by: Mark Wielaard <mark@klomp.org>
>>
>> So remove it from LIBS for makedumpfile
> 
> It seems that this is ok with the latest elfutils, but with older ones?
> Is it possible to remove -lebl when elfutils does not have libebl.a?
I have no idea about it for now. The method to check version depends on
distribution. Is it doable by checking /usr/lib64/libebl ?

Thanks,
Pingfan
> 
> Thanks,
> Kazu
> 
>>
>> Signed-off-by: Pingfan Liu <piliu@redhat.com>
>> ---
>>  Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 1fdb628..df21b93 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
>>  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c
>> arch/ppc.c arch/sparc64.c
>>  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
>>
>> -LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
>> +LIBS = -ldw -lbz2 -ldl -lelf -lz
>>  ifneq ($(LINKTYPE), dynamic)
>>  LIBS := -static $(LIBS)
>>  endif
>> --
>> 2.7.5
>>
> 
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
