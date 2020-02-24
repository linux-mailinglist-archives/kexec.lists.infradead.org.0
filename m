Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CDC169EC1
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 07:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbRsluO9oHWu0A7Ynya2g8EL3KqjomwILSysOCcJYH0=; b=gB6KCA8FOu42rd
	YOYOLifTS87jbQCpEAApBpU445FLHZVDe6hgYJp2z1XTK2FQkmtG2tZgBjdv6vgBpiMGaS/+SxJlv
	Z99lWBfW1sZF0Exblsq2Ukd7SI6wUCih+BGXgrwK4NiJh8SuZo41yAyWGSbiWGJFMVRt6vK59uh/5
	BwBaGBkTV9utSuXa3T3T1FF96S/rXz0A5nZwV6zeIEKJGU3sKIwJuw6qCatR5CXy3kkfycL+F99OX
	wZrzEF692195SFPGKwekoDKEGNydzhZAGB+nnDIpuX0by3fWKu/oKdaNu4c88GG7mxblHoxw0jpsJ
	qspM6r9HjERkDEgb19qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67XW-0004AI-2Z; Mon, 24 Feb 2020 06:48:26 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67XL-0003xn-Ee
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 06:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582526893;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4MNXC7XzC3cwUmQN/BZIgFto58k1RyylRjckYO05HmI=;
 b=cfNo3vaoken7fRxhqlHBFHtecHC/+yfCO9pqFpuMvYwMuoqwh9e4IXy3OI0Y/Pc07u5bGL
 Dhm/gKUamBmTM0sXeDSub/O5dhXpNN3iC89CnxbIXOzaBU19zl0/H401Go5slaOeEdYggW
 pokUyZ8S6HvErS9upsTnQggB2rbFePs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-BMAtBAnMMiOoBUz9jAUjDw-1; Mon, 24 Feb 2020 01:48:11 -0500
X-MC-Unique: BMAtBAnMMiOoBUz9jAUjDw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 524AC185735D;
 Mon, 24 Feb 2020 06:48:10 +0000 (UTC)
Received: from localhost (ovpn-12-84.pek2.redhat.com [10.72.12.84])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 00C5B58;
 Mon, 24 Feb 2020 06:48:06 +0000 (UTC)
Date: Mon, 24 Feb 2020 14:48:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH v2] kexec: support parsing the string "Reserved" to get
 the correct e820 reserved region
Message-ID: <20200224064804.GC24216@MiWiFi-R3L-srv>
References: <20200224063655.9890-1-lijiang@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200224063655.9890-1-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_224815_563586_3566F6C4 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dyoung@redhat.com, bhsharma@redhat.com, horms@verge.net.au,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 02/24/20 at 02:36pm, Lianbo Jiang wrote:
> When loading kernel and initramfs for kexec, kexec-tools could get the
> e820 reserved region from "/proc/iomem" in order to rebuild the e820
> ranges for kexec kernel, but there may be the string "Reserved" in the
> "/proc/iomem", which caused the failure of parsing. For example:
> 
>  #cat /proc/iomem|grep -i reserved
> 00000000-00000fff : Reserved
> 7f338000-7f34dfff : Reserved
> 7f3cd000-8fffffff : Reserved
> f17f0000-f17f1fff : Reserved
> fe000000-ffffffff : Reserved

This looks good to me. However, is it investigated why there are two
different names for reserved e820 regions? Can we unify them with one
name in kernel, 'Reserved' or 'reserved'?


> 
> Currently, kexec-tools can not handle the above case because the memcmp()
> is case sensitive when comparing the string.
> 
> So, let's fix this corner and make sure that the string "reserved" and
> "Reserved" in the "/proc/iomem" are both parsed appropriately.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
> Note:
> Please follow up this commit below about kdump fix.
> 1ac3e4a57000 ("kdump: fix an error that can not parse the e820 reserved region")
> 
> Changes since v1:
> [1] use strncasecmp() instead of introducing another 'else-if'(
> suggested by Bhupesh)
> 
>  kexec/arch/i386/kexec-x86-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> index 61ea19380ab2..9303704a0714 100644
> --- a/kexec/arch/i386/kexec-x86-common.c
> +++ b/kexec/arch/i386/kexec-x86-common.c
> @@ -90,7 +90,7 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
>  		if (memcmp(str, "System RAM\n", 11) == 0) {
>  			type = RANGE_RAM;
>  		}
> -		else if (memcmp(str, "reserved\n", 9) == 0) {
> +		else if (strncasecmp(str, "reserved\n", 9) == 0) {
>  			type = RANGE_RESERVED;
>  		}
>  		else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
> -- 
> 2.17.1
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
