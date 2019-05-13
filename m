Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD2E1B1A8
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 10:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QQWSMTQC9xNcQySAZNd5bdLNfUL7VfOOeWbv+JNE/k=; b=m9qxHmnlXb08qu
	btW7hQSgZtjmdBu6s6Ue8NiJY67KbmeD2PyjlMkEw7mOeyNsIm/j6+J6e7s+DKQDh2f/FzldRL7PS
	UQ072BHeHVFnPbIqFZlhmK3ZRhZfS6dub+mjKD+TDR/Uz9hxifxskfx6cy0pN92aLJvGlpHRSj3RV
	O5DJzjUU4lRd/Dq09gDANGz3TqLlWmenL+kzib8H306yxo5Q4GCz/B4VNtlaqXBRq0u8PbqZtf4lo
	kp9U+lmAGzHpvOILgtsxfTEKUPlXBp++DTbJviqYXP184GPRGRFyd5rYZBXJfwfbeyobLG2O/7+b6
	jiHqSKnf0gA/t7OgWghw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5ue-00080z-Jv; Mon, 13 May 2019 08:02:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5ua-00080U-Uo
 for kexec@lists.infradead.org; Mon, 13 May 2019 08:02:18 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3DA3681F01;
 Mon, 13 May 2019 08:02:16 +0000 (UTC)
Received: from localhost (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7558619C6A;
 Mon, 13 May 2019 08:02:13 +0000 (UTC)
Date: Mon, 13 May 2019 16:02:10 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>, j-nomura@ce.jp.nec.com
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190513080210.GC16774@MiWiFi-R3L-srv>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513075006.GB20105@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 13 May 2019 08:02:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_010217_011774_B7313233 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/13/19 at 09:50am, Borislav Petkov wrote:
> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> > This is a critical bug which breaks memory hotplug,
> 
> Please concentrate and stop the blabla:
> 
> 36f0c423552d ("x86/boot: Disable RSDP parsing temporarily")
> 
> already explains what the deal is. This code was *purposefully* disabled
> because we ran out of time and it broke a couple of machines. Don't make
> me repeat all that - you were on CC on *all* threads and messages!
> 
> So we're going to try it again this cycle and if there's no fallout, it
> will go upstream. If not, it will have to be fixed. The usual thing.
> 
> And I don't care if Kairui's patch fixes this one problem - judging by
> the fragility of this whole thing, it should be hammered on one more
> cycle on as many boxes as possible to make sure there's no other SNAFUs.
> 
> So go test it on more machines instead. I've pushed it here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window

Pingfan has got a machine to reproduce the kexec breakage issue, and
applying these two patches fix it. He planned to paste the test result.
I will ask him to try this branch if he has time, or I can get his
machine to test.

Junichi, also have a try on Boris's branch in NEC's test environment?

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
