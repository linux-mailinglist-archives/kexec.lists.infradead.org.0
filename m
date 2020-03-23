Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775F418FAA0
	for <lists+kexec@lfdr.de>; Mon, 23 Mar 2020 17:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uLYx+Eq8floYYsH5J5pBK0wmZKl+HC4W24aBYAfOjhE=; b=SbSUviUmaCySLsLx4ntgOAQ12
	K21JxUuDKJT8DcdGbkaYXamoiVWnpc0eooD55R1EpkKm3I77FAF0h4WD9Ep7uwdvlk8KOKVzIjQvO
	U90Q1BGBxLYqqMlndQbiQKtOAMGTjAmhFuBzwfsc+7Cw/DK0EUOTqRQJD+Feo2z/N/Mx/WtPt2k1y
	CWZqh18OGVgJ6OJGwb6v9HDhBhOsMtcTCOXROfmaswHldhPcIGH+8uGfxXsUiedskx6XC/9m/xsAt
	N3g/UVv3ZEpZMSv3aSK9DFykTNY0hQHeDl6zdPWpesAUFMWxbVFh9x9jNr0qhO9SkFrfFXfzf4NkT
	nFfa1ZdLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQPI-0003DW-9a; Mon, 23 Mar 2020 16:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQPE-0003CV-IB; Mon, 23 Mar 2020 16:58:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 731061FB;
 Mon, 23 Mar 2020 09:58:24 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EADD3F7C3;
 Mon, 23 Mar 2020 09:58:23 -0700 (PDT)
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 kexec mailing list <kexec@lists.infradead.org>
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
Date: Mon, 23 Mar 2020 16:58:17 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_095828_646098_A4766E84 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: will.deacon@arm.com, Bhupesh Sharma <bhsharma@redhat.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
> Hi All,
> 
> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
> Here network card is continuously giving following AER error
> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
> aer_mask: 0x00000000
> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
> aer_agent=Requester ID
> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> 
> This error is not 100% reproducible. It happens 1 out of 4 try.
> 
> This error goes away in following two scenarios
> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
>          if (reg & CR0_SMMUEN) {
>                  dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
>                  WARN_ON(is_kdump_kernel() && !disable_bypass);
>                  mdelay(100);  <-- Added delay
>                  arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
>          }
> 
>  From A), it is clear that it is related to IOMMU
>  From B), looks like during boot of kdump kernel, network card is still
> active and it has sent some request over PCIe.
> as GPBA_ABORT bit is set, no response/completion coming to PCIe
> controller hence "CmpltTO" error.
> 
> Ideally before setting GPBA_ABORT bit, there should be some check for
> active transaction. if it is not possible, a wait should be done to
> assure that no more pending transaction left.

In general there is no way to check for active transactions, and even if 
there were, waiting for them to finish could mean waiting forever (if, 
say, a device is continuously streaming to/from a ring buffer).

> why any such delay has not been considered?

The main aim here is to block any DMA left over from the crashed kernel 
as quickly as possible, to minimise any further potential corruption of 
memory (consider if a device was left writing to an IOMMU virtual 
address that happened to have the same value as some physical address in 
the crash kernel's reserved memory). The fact that an arbitrary delay 
happens to give a 'nicer' result in one particular situation on one 
particular platform is neither here nor there in general.

Besides, this is *crash* kernel, so yeah, expect errors - something's 
already gone badly wrong to get us here, and everything from then on is 
merely a best-effort attempt to salvage what we can. Does it even make 
sense to have AER enabled at this point?

Robin.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
