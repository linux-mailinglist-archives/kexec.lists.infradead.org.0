Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE62996C4
	for <lists+kexec@lfdr.de>; Thu, 22 Aug 2019 16:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1H4ifoAWv2RyJx2xpFC1+0OcVX+A7hS+8Y4F2/CP10=; b=S7tgnmDdKZ4PBx
	94wQ6ew95Ex7ZqaFGUls4LcbmGSSzk1xFUNW5knOgUs5/W6pcGXAJqCnEZ+Vz7++2I8LZj054wGyP
	8RcTtB2VJGZanWlXYlygoTiDpoKDg3gqFMehgITdeuQa271QVoLtsRjVTRKTAgG9Edm1ywPwt4Io1
	1ir0MwaT36+Qh4rPNIANE81jGAqLxbxm0DG8KMU5N/i8yYoaE7bhaRI64jRnQg0u9WJH1O37ilwWc
	lFFat4ADke9XbWDd23YW3GUGdSvDLVEAH/uYhU0DmNhPJ61HFNn3+MqggNPMSYTu83UfX2FLpenVN
	6Lxz+3Xe8UmotaR0DrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oBV-0001IC-8d; Thu, 22 Aug 2019 14:35:29 +0000
Received: from mail-eopbgr750057.outbound.protection.outlook.com
 ([40.107.75.57] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oBR-0001HD-Bt
 for kexec@lists.infradead.org; Thu, 22 Aug 2019 14:35:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PITHN499Cn3KI61lAUBxbNcC6VhiNWKHsD/1MBESvMnkprAw9b8VBkpyJ1s2VW05iZS3Vif6VSy62+n58fP+yg2dRyQDDV1Wdh63IH9ePfb2HyD/ya5YfBGEzSrTRrBee1ZGmRFy+9j0FdIK0yz/pq2rCtyGdOyQrU4VkH6yi+1VlNx/fyn+QovCUwW0UQi/fnd2vww7QwttI1fkxdwcTODL6+ONGRmVxoOmVbztYESiG98Pz2xbwhfq20MIHCvnlg7W9pgH6jisAU8wvpe1jfTAEzxomDKJqKtuDHBHafSiZ+mYZTHJ24MEsjim8oO4U0fiT3BcKxtE8I1wbboNMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/0DJoXZjTR3mRdbNaCsipnQ9elS8IPLlkuaDahYjKY=;
 b=DaNkSUxXk0K8ZqtLQyysCEVwW+3rZlUj2W6rnGa/XOgcyM7Zktsqov0wRBQPEd4/CZYtQ6pk9RkHiC5m6m7j5ugW4VvgWK0RU/HihvCcjLTNSFfWdP1jYKsOEqKvIB2fSV6mcvl2UGKQdxqV9aZ8fscBzq+GmrnSo+4UgQS7W94gZanjXKulHw5jmSRFnr9JfqCTjGRbDFzkdLmeINShgsRb8eKNbjIwD8wkIrjgdvYIfHDDMxtTxYTkUtsvKEbpbSMfn6KRtBM2Uu/GiatXflRCoUVAoYlCIQH1kM/LYdtJg68Q2VMqwbzXRFvhfmiHTRNyvW79Vt818M6/MaW87w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/0DJoXZjTR3mRdbNaCsipnQ9elS8IPLlkuaDahYjKY=;
 b=4dMywhym/5tw4eDWYEORs8yvowmXZgoUYCXzrOBXZ2tMBdQkB4hWbEZUuwcyKRIv/fN8DROi49XkLmWPpyQe4eif1lO6gLBGKKPwbgt9Ie3kt08a9r5voNAHYq/FZuP+06Ozdntw6h+SzOTivSb5yoGLofejKcYJ57LXsCisnkY=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB3484.namprd12.prod.outlook.com (20.178.199.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 14:35:22 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::585:2d27:6e06:f9b0%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 14:35:22 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Kairui Song <kasong@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] x86/kdump: Reserve extra memory when SME or SEV is active
Thread-Topic: [PATCH] x86/kdump: Reserve extra memory when SME or SEV is active
Thread-Index: AQHVWJUTadUWR5JbS0WLM6x20OSCiqcHPHqA
Date: Thu, 22 Aug 2019 14:35:21 +0000
Message-ID: <ff049b95-92a3-52ab-7ee8-01051a597cff@amd.com>
References: <20190822025328.17151-1-kasong@redhat.com>
In-Reply-To: <20190822025328.17151-1-kasong@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR04CA0089.namprd04.prod.outlook.com
 (2603:10b6:805:f2::30) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2c29484-90a0-409d-fb89-08d7270df655
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM6PR12MB3484; 
x-ms-traffictypediagnostic: DM6PR12MB3484:
x-microsoft-antispam-prvs: <DM6PR12MB348448D90A62B1A001C1D6BDECA50@DM6PR12MB3484.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(189003)(199004)(71200400001)(2906002)(76176011)(99286004)(11346002)(446003)(52116002)(316002)(54906003)(486006)(476003)(66066001)(478600001)(305945005)(14454004)(110136005)(86362001)(81166006)(8676002)(7416002)(31686004)(6116002)(3846002)(81156014)(8936002)(71190400001)(2616005)(4326008)(5660300002)(6512007)(53546011)(186003)(7736002)(256004)(66476007)(102836004)(2501003)(26005)(66446008)(66556008)(66946007)(36756003)(6246003)(53936002)(25786009)(6486002)(229853002)(386003)(6506007)(64756008)(6436002)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB3484;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HlzSflvLgtv2Zj9tVT276/8kL9wNs3Gl4CEoSGFzIDqjzPvtthXOaDV41OeSlL9cMuMbmiOuW5bBG8VMN6VONKc6kSvD2n9Ar+6wv8gZRS6TNVAUE0yjB5LI+Barul/2CtXkHlOiHii7EEqgRGm7rB2bN0Kk8F9qXyrEzHlZz1BNBslUfxR8nT2ne6S/KXbMmaRTWiN7G9S5ove4RKX014lRxNijvQS94GKyTzVDlA/IiKiOvFaKkC6Lj3DW7HLgPsQ4CF3+L4QywcNCiWEaaYeHNoqhqWlF1Kv6A0f3XQpMcwsQXUHmKLiJbFRpbTJJ5AXYyQsGqVfouGmfYJumzjtlf/f51wIo6qu0nL5Lro94jG2xWMGeN8e1u6wYaiakv45i0oJaHsDYSfY4twtP7G5cFlOm6bBkDoiXIyoBfqQ=
x-ms-exchange-transport-forked: True
Content-ID: <EEDAE35B32F9CC4B801F6354AE021080@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c29484-90a0-409d-fb89-08d7270df655
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 14:35:22.0980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9UnZqChvfv2UDVGSD9452/f5denRvI1kF6/wg8+2lR1s4OoHtWJZ4ZpvtcakV55sJljuU8ZrtX4+nPoeKoNxrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_073525_464258_32DE6A48 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.57 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 8/21/19 9:53 PM, Kairui Song wrote:
> Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> SWIOTLB will be enabled even if there is less than 4G of memory when SME
> is active, to support DMA of devices that not support address with the
> encrypt bit.
> 
> And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> 
> Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> encryption") will always force SWIOTLB to be enabled when SEV is active
> in all cases.
> 
> Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> and this is also true for kdump kernel. As a result kdump kernel will
> run out of already scarce pre-reserved memory easily.
> 
> So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> is specified or any offset is used. As for the high reservation case, an
> extra low memory region will always be reserved and that is enough for
> SWIOTLB. Else if the offset format is used, user should be fully aware
> of any possible kdump kernel memory requirement and have to organize the
> memory usage carefully.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>  arch/x86/kernel/setup.c | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index bbe35bf879f5..ed91fa9d9f6e 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -528,7 +528,7 @@ static int __init reserve_crashkernel_low(void)
>  
>  static void __init reserve_crashkernel(void)
>  {
> -	unsigned long long crash_size, crash_base, total_mem;
> +	unsigned long long crash_size, crash_base, total_mem, mem_enc_req;
>  	bool high = false;
>  	int ret;
>  
> @@ -550,6 +550,17 @@ static void __init reserve_crashkernel(void)
>  		return;
>  	}
>  
> +	/*
> +	 * When SME/SEV is active, it will always required an extra SWIOTLB
> +	 * region.
> +	 */
> +	if (sme_active() || sev_active()) {

You can use mem_encrypt_active() here in place of the two checks.

> +		mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> +		pr_info("Memory encryption is active, crashkernel needs %ldMB extra memory\n",
> +				(unsigned long)(mem_enc_req >> 20));

There is a point below where you zero out this value, so should this
be issued later only if mem_enc_req is non-zero?

Also, looks like one too many tabs.

> +	} else

Since you used braces on the if path, you need braces on the else path.

Thanks,
Tom

> +		mem_enc_req = 0;
> +
>  	/* 0 means: find the address automatically */
>  	if (!crash_base) {
>  		/*
> @@ -563,11 +574,19 @@ static void __init reserve_crashkernel(void)
>  		if (!high)
>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_LOW_MAX,
> -						crash_size, CRASH_ALIGN);
> -		if (!crash_base)
> +						crash_size + mem_enc_req,
> +						CRASH_ALIGN);
> +		/*
> +		 * For high reservation, an extra low memory for SWIOTLB will
> +		 * always be reserved later, so no need to reserve extra
> +		 * memory for memory encryption case here.
> +		 */
> +		if (!crash_base) {
> +			mem_enc_req = 0;
>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_HIGH_MAX,
>  						crash_size, CRASH_ALIGN);
> +		}
>  		if (!crash_base) {
>  			pr_info("crashkernel reservation failed - No suitable area found.\n");
>  			return;
> @@ -583,6 +602,7 @@ static void __init reserve_crashkernel(void)
>  			return;
>  		}
>  	}
> +	crash_size += mem_enc_req;
>  	ret = memblock_reserve(crash_base, crash_size);
>  	if (ret) {
>  		pr_err("%s: Error reserving crashkernel memblock.\n", __func__);
> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
