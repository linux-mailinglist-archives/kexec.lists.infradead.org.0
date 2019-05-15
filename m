Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5541D1E8B2
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8zotOSL7GMjK6Ew/hmzuqN9LnoFF8IDBbpaeLxMSog=; b=mGvkt4fHrsHm3/
	WGIMl1ToM6hKX2ssliQpBrfnHRE/RwU+RUF1W1aITqsS1rDoE6Y1kQ+W7j6v8cuYt0ph+EOS4t64q
	Ee11NeiRYwuZflQfKz1Zf1hYZKKvNRLKMQEGdxE8oWr32puHluDsSoCedygkeq5fz182F2fcVt1jf
	FkSusBvmapTF6INTyt7a0to+XRtXYVxstleKN0CjpVUEzzslmeLWT4TsiQ3k5b1ShdjBEv+HpiLF4
	3CLGi1ljxTn7JCiI7gkjXDBUY7JaHJqqVQZfUA9fmZQ4MN3e7SbOgRujNI1krJfVqts3ipPLgx26R
	l1B0tdeRGmN2a7xfiW3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQnsV-0003GT-2J; Wed, 15 May 2019 06:59:03 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQnsR-0003FO-9l
 for kexec@lists.infradead.org; Wed, 15 May 2019 06:59:01 +0000
Received: from zn.tnic (p200300EC2F0A7C00C5AEE5FDCF635866.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:7c00:c5ae:e5fd:cf63:5866])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5171B1EC050B;
 Wed, 15 May 2019 08:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1557903529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=tKlVEadOu2TMf51BsYgCfI6Pqrx82HYiWRU6sDgtFtI=;
 b=oaK55DJzFSRq+I1iCez9wqIFzE4gA5TNxkKjeGqP20qYi3fvdf6FeMLR9348OC+m+j1iYt
 3kQvKWVxW3z1RsKYHhsZsCUG74AUPyG0IuOdDh8VPCwsDIdtshoBD5pX4OdpijpJeu4d/y
 M8HOSvs/wCu1igXAfwS12rKZ3Plix/A=
Date: Wed, 15 May 2019 08:58:43 +0200
From: Borislav Petkov <bp@alien8.de>
To: Junichi Nomura <j-nomura@ce.jp.nec.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190515065843.GA24212@zn.tnic>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080210.GC16774@MiWiFi-R3L-srv>
 <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_235859_501547_A28D9C2A 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "fanc.fnst@cn.fujitsu.com" <fanc.fnst@cn.fujitsu.com>,
 "kasong@redhat.com" <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 05:17:19AM +0000, Junichi Nomura wrote:
> Hi Kairui,
> 
> On 5/13/19 5:02 PM, Baoquan He wrote:
> > On 05/13/19 at 09:50am, Borislav Petkov wrote:
> >> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> >> So we're going to try it again this cycle and if there's no fallout, it
> >> will go upstream. If not, it will have to be fixed. The usual thing.
> >>
> >> And I don't care if Kairui's patch fixes this one problem - judging by
> >> the fragility of this whole thing, it should be hammered on one more
> >> cycle on as many boxes as possible to make sure there's no other SNAFUs.
> >>
> >> So go test it on more machines instead. I've pushed it here:
> >>
> >> https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window
> > 
> > Pingfan has got a machine to reproduce the kexec breakage issue, and
> > applying these two patches fix it. He planned to paste the test result.
> > I will ask him to try this branch if he has time, or I can get his
> > machine to test.
> > 
> > Junichi, also have a try on Boris's branch in NEC's test environment?
> 
> while the patch set works on most of the machines I'm testing around,
> I found kexec(1) fails to load kernel on a few machines if this patch
> is applied.  Those machines don't have IORES_DESC_ACPI_TABLES region
> and have ACPI tables in IORES_DESC_ACPI_NV_STORAGE region instead.

Why? What kind of machines are those?

Why are the ACPI tables in NV storage?

Looking at crash_setup_memmap_entries(), it already maps that type so I
guess this is needed.

+ Rafael and leaving in the rest for reference.

 
> So I think map_acpi_tables() should try to map both regions.  I tried
> following change in addition and it worked.
> 
> -- 
> Jun'ichi Nomura, NEC Corporation / NEC Solution Innovators, Ltd.
> 
> 
> diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
> index 3c77bdf..3837c4a 100644
> --- a/arch/x86/kernel/machine_kexec_64.c
> +++ b/arch/x86/kernel/machine_kexec_64.c
> @@ -56,12 +56,22 @@ static int mem_region_callback(struct resource *res, void *arg)
>  {
>  	unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
>  	struct init_pgtable_data data;
> +	int ret;
>  
>  	data.info = info;
>  	data.level4p = level4p;
>  	flags = IORESOURCE_MEM | IORESOURCE_BUSY;
> -	return walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
> -				   &data, mem_region_callback);
> +	ret = walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
> +				  &data, mem_region_callback);
> +	if (ret && ret != -EINVAL)
> +		return ret;
> +
> +	ret = walk_iomem_res_desc(IORES_DESC_ACPI_NV_STORAGE, flags, 0, -1,
> +				  &data, mem_region_callback);
> +	if (ret && ret != -EINVAL)
> +		return ret;
> +
> +	return 0;
>  }
>  #else
>  static int map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p) { return 0; }

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
