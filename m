Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3FD12A685
	for <lists+kexec@lfdr.de>; Wed, 25 Dec 2019 08:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zz0yjc85n0x+j2s1xZlnZa2N4ElyEOL5TdKs20XE7pI=; b=cQzI71aqJod8yQ
	6NecEmq8fKxWMg1J3zXX8ZHU8wssZyA0sXeTVic3oaM+0OlJDdT0tgX7yGXj8Dhj1H9cWtCBpWVYx
	hZpyOJHi2t5xbF/Q9i/pXsDWzOXyfscKD4grYxCmz/Np6ctp/eqDuzyEytJrCRtr6NccASZcUugfs
	V1syxlBd06QIQsHu2A01aWVyViw/6PHampoqArour2MAy3f+JfP6xhcNhvGYQ55q+PnSv+sR997RQ
	BRPFpM1UzQELvhoUlDpoqINYVqnTDbotIMuR32pS+mVooqW1rPvguugCsbzE1mRTo05GokE4LoqsB
	dJI/ZTvoGrsyf9yusqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik0fm-0006AU-AL; Wed, 25 Dec 2019 07:01:34 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik0fi-00069w-Um
 for kexec@lists.infradead.org; Wed, 25 Dec 2019 07:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577257288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u//ESy15IGc/BP211+J4VWx/wIc7dqxkikgAFDRdb4w=;
 b=docpGQ3wjEqJ+Plz1PN2AyE4oHcgvYBdtCHNh5GKATHUSr1+moVuGGA8KD31VlfJUO7yFe
 ey3zUtJZclG6fBeMxPHrtziEIy+zPSu0ts+XE99chssvhWHsABGDhkHRvunT06hFrJlMwU
 7/0zrD00CKKj/MA//DPMNaFdxNzc1jk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-LgD31ExNMAezazMTwDceuw-1; Wed, 25 Dec 2019 01:59:22 -0500
X-MC-Unique: LgD31ExNMAezazMTwDceuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6604800EBF;
 Wed, 25 Dec 2019 06:59:20 +0000 (UTC)
Received: from localhost (ovpn-12-41.pek2.redhat.com [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F54B691EA;
 Wed, 25 Dec 2019 06:59:17 +0000 (UTC)
Date: Wed, 25 Dec 2019 14:59:14 +0800
From: "'bhe@redhat.com'" <bhe@redhat.com>
To: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
Subject: Re: [RFD] kdump, kaslr: how to fix the failure of reservation of
 crashkernel low memory due to physical kaslr
Message-ID: <20191225065914.GC3355@MiWiFi-R3L-srv>
References: <OSBPR01MB4006AF8B4D355200E385850E95280@OSBPR01MB4006.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB4006AF8B4D355200E385850E95280@OSBPR01MB4006.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_230131_108144_3C9216A5 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "'ebiederm@xmission.com'" <ebiederm@xmission.com>,
 "'dyoung@redhat.com'" <dyoung@redhat.com>,
 "'mingo@kernel.org'" <mingo@kernel.org>,
 "'vgoyal@redhat.com'" <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi HATAYAMA,

On 12/25/19 at 04:26am, d.hatayama@fujitsu.com wrote:
> Currently, reservation of crashkernel low memory sometimes fails due
> to a sparse memory caused by physical kaslr with the following
> message:
> 
>     Cannot reserve 256MB crashkernel low memory, please try smaller size.

I don't understand, may not get your point. KASLR will randomize the
position of kernel image. However, kernel image usually takes up 50M
memory. Under low 4G memory, how come it can't reserve 256M crashkernel
low memory. Do you have the boot log of the failed case?

> 
> Kdump needs low memory, memory area less than 4GB, e.g. for swiotlb.
> Its size is 256MB for low memory by default. OTOH, physical kaslr
> loads kernel images in a random physical address for
> security. Physical kaslr sometimes choose low memory and sparse
> there and as a result, reservation of crash kernel low memory could fail.
> 
> This failure seldom occurs on systems with large memory. For example,
> on our system with 128GB, the issue occurs once in hundreds of
> reboots. Although it doesn't occur frequently and can be avoided in
> practice simply by rebooting the system, it definitely occurs once in
> hundreds of reboots. Once the issue occurs, it's difficult for ordinary
> users to understand why it failed. I'd like to fix this current behavior.
> 
> I'm now coming up two ideas but don't know what is best. Please
> discuss how to fix the issue in better way.
> 
> 1) Add a kernel parameter to make physical kaslr to avoid specified
>    memory area
> 
>   This is the simplest idea I came up with first just like
>    kaslr_mem_avoid=4GB-0, which is similar syntax to memap=, meaning
>    that kaslr, please avoid to load kernel image into the region [0,
>    4GB).
> 
>   It looks to me that this can be implemented easily by taking
>    advantage of the existing code about mem_avoid mechanism in
>    arch/x86/boot/compressed/kaslr.c.
> 
>   This mechanism doesn't lose security provided by physical kaslr if
>    system memory is large enough.
> 
>   Demerit of this is that users need configuration. Automatic way is
>    better if possible.
> 
> 2) Add special handling for crashkernel= low in physical kaslr
> 
>   The second idea I came up with is to add special handling for
>    crashkernel= low in physical kaslr, i.e. physical kaslr recognizes
>    crashkernel= in kernel parameters and keep enough memory for
>    crashkenrel.
> 
>   To guarantee that the memory area kept by the special handling in
>    physical kaslr is used for crashkernel, it is necessary to mark the
>    area to indicate to the crashkernel code executed after kernel
>    runs. To implement this, I imagine introducing a new type of memory
>    a kind of E820_CRASHKERNEL_LOW.
> 
>   My concern on this idea is whether its worth implementing such
>    special handling in physical kaslr simply because I don't find such
>    code in physical kaslr now.
> 
> 3) Any other better ideas?

Someone ever told that some systems may not have low 4G memory since
they own hardware iommu. In real life, I never see such kind of system,
and most of them can give 256M crashkernel memory a satisfactory result.
Unless you reserve more than 1G under low 4G, it could fail because of
kinds of complicated memory reservations there.

Thanks
Baoquan

> 
> Thanks.
> HATAYAMA, Daisuke
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
