Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB119D703
	for <lists+kexec@lfdr.de>; Fri,  3 Apr 2020 14:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG/mWCmhtZMxquIga3t75ZSvTBoaDE2xgLmVdoTg5YY=; b=nyXG4VX0bTZCog
	7asCBmHN77uw+RLinF8ZFwH0oEkh1ip9yP8U1+ras7cKke/AzGNGsJBxuNV5vKQpiGho5IUSBVJKn
	z+PA/I3wuM0zdBggKByr6liP1o810bU5v2fPf1X10nJ+krXY8dzmRqK0zBECsAgZyL49nfCjPMmLC
	HL63WMcIEbCJ6fgw9Rdeg4/U9vJGx5CzkcW1AKdaGce2w7lDow5cbMKK4ZgFEt4NcK2PCmP2Et1z2
	LG9yQJi4hv7wZFfVofQnvoab7KSWIMn7c2Wq8/2TKXwyPgtRCZ/GTOha/bugzMNX6fl+vchd5JkV0
	frfHxsdz5EbEGYKPAgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLtV-0003Ch-Dz; Fri, 03 Apr 2020 12:57:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLtQ-000375-2z
 for kexec@lists.infradead.org; Fri, 03 Apr 2020 12:57:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585918669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JTKwbcJ3kLG2qGb0SbTmuAeYvvl4mKOAMCfy9jepaP8=;
 b=KXqVqjVqv1hSwiTYFwjZJjsZzaI29gm/8wcvkvAhbPBx1or1tMSF0KnyzH2N6inMbsNqK8
 09IcnjR96uN6JnpeXGHgMZD+WxEOiZ4hSiT3OgkeH0YZY0inc84+BZWILWws/rWtEZvwTO
 UpgWeXB3lRX+2hGHUAOmod+8GQ/YeDk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-vToPcn05Ne68qPrzzRoXog-1; Fri, 03 Apr 2020 08:57:46 -0400
X-MC-Unique: vToPcn05Ne68qPrzzRoXog-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C914800D53;
 Fri,  3 Apr 2020 12:57:44 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-89.pek2.redhat.com
 [10.72.12.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DC2A25E000;
 Fri,  3 Apr 2020 12:57:37 +0000 (UTC)
Date: Fri, 3 Apr 2020 20:57:33 +0800
From: Dave Young <dyoung@redhat.com>
To: Ashish Kalra <Ashish.Kalra@amd.com>
Subject: Re: [PATCH v6 14/14] KVM: x86: Add kexec support for SEV Live
 Migration.
Message-ID: <20200403123529.GA107255@dhcp-128-65.nay.redhat.com>
References: <cover.1585548051.git.ashish.kalra@amd.com>
 <0caf809845d2fdb1a1ec17955826df9777f502fb.1585548051.git.ashish.kalra@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0caf809845d2fdb1a1ec17955826df9777f502fb.1585548051.git.ashish.kalra@amd.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_055752_221361_FC5E2D98 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thomas.lendacky@amd.com, rientjes@google.com, brijesh.singh@amd.com,
 lijiang@redhat.com, kvm@vger.kernel.org, srutherford@google.com,
 joro@8bytes.org, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, bhe@redhat.com, mingo@redhat.com,
 luto@kernel.org, hpa@zytor.com, pbonzini@redhat.com, tglx@linutronix.de,
 bp@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Ccing kexec list.

Ashish, could you cc kexec list if you repost later?
On 03/30/20 at 06:23am, Ashish Kalra wrote:
> From: Ashish Kalra <ashish.kalra@amd.com>
> 
> Reset the host's page encryption bitmap related to kernel
> specific page encryption status settings before we load a
> new kernel by kexec. We cannot reset the complete
> page encryption bitmap here as we need to retain the
> UEFI/OVMF firmware specific settings.
> 
> Signed-off-by: Ashish Kalra <ashish.kalra@amd.com>
> ---
>  arch/x86/kernel/kvm.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> index 8fcee0b45231..ba6cce3c84af 100644
> --- a/arch/x86/kernel/kvm.c
> +++ b/arch/x86/kernel/kvm.c
> @@ -34,6 +34,7 @@
>  #include <asm/hypervisor.h>
>  #include <asm/tlb.h>
>  #include <asm/cpuidle_haltpoll.h>
> +#include <asm/e820/api.h>
>  
>  static int kvmapf = 1;
>  
> @@ -357,6 +358,33 @@ static void kvm_pv_guest_cpu_reboot(void *unused)
>  	 */
>  	if (kvm_para_has_feature(KVM_FEATURE_PV_EOI))
>  		wrmsrl(MSR_KVM_PV_EOI_EN, 0);
> +	/*
> +	 * Reset the host's page encryption bitmap related to kernel
> +	 * specific page encryption status settings before we load a
> +	 * new kernel by kexec. NOTE: We cannot reset the complete
> +	 * page encryption bitmap here as we need to retain the
> +	 * UEFI/OVMF firmware specific settings.
> +	 */
> +	if (kvm_para_has_feature(KVM_FEATURE_SEV_LIVE_MIGRATION) &&
> +		(smp_processor_id() == 0)) {
> +		unsigned long nr_pages;
> +		int i;
> +
> +		for (i = 0; i < e820_table->nr_entries; i++) {
> +			struct e820_entry *entry = &e820_table->entries[i];
> +			unsigned long start_pfn, end_pfn;
> +
> +			if (entry->type != E820_TYPE_RAM)
> +				continue;
> +
> +			start_pfn = entry->addr >> PAGE_SHIFT;
> +			end_pfn = (entry->addr + entry->size) >> PAGE_SHIFT;
> +			nr_pages = DIV_ROUND_UP(entry->size, PAGE_SIZE);
> +
> +			kvm_sev_hypercall3(KVM_HC_PAGE_ENC_STATUS,
> +				entry->addr, nr_pages, 1);
> +		}
> +	}
>  	kvm_pv_disable_apf();
>  	kvm_disable_steal_time();
>  }
> -- 
> 2.17.1
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
