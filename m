Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854834CB0
	for <lists+kexec@lfdr.de>; Tue,  4 Jun 2019 17:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xiE5gdffS8OA6lix/CM5EEZ1u7AaZS1os5HglX/c+g=; b=dQLS69dow2v7vd
	3yVV7xoOnoklqgo4zOW4RjRlWZpWgj6Nuigrup+XF5lU5fejFD/uK+YjrzQMltS1gplePfYx97OCL
	Fs6gKXI2YZJ27dfdEh08chMZVDxy77uuK8FaAGw/PqefDKAGJgWxIvjGapcuTMy7oV8XJTL92ahfe
	hjCEcX5qno3FJ3yUpkTp3wuyc6qmCW++DYgVFGrbuCBI6P589gWF+aTFBBLUEM3QT2WUjhl1/Aheu
	q9zoCJt+/nCkp3vUkdo3LjLtpT9shT8dSJVOI8gLJxk9aTYiA4nUrzsXaCNjYEacbjeN2zuQ/2d2v
	40eHTjgCcY8BdV0E8PRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBnY-00022W-FA; Tue, 04 Jun 2019 15:56:28 +0000
Received: from mail-eopbgr760088.outbound.protection.outlook.com
 ([40.107.76.88] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBnV-000227-5i
 for kexec@lists.infradead.org; Tue, 04 Jun 2019 15:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4jBKXr+/OasCKHUWnkQcHw5ZzynnvwLr8ZgCYtc2sgA=;
 b=FYzxb29GNmi0CnuWptP1aXHhXHQUbEhBm6/HG7yIgfW9nSyLpfzbsJN8Y8LPHT4syd4JRXq9MkfEu3q/xUuV+msnmf5CTrbNZ+vbITD8leNNPii2y5omZQbdb81m6Y2bF+0hl/i4yKrs8g3qr0NPJF9lvAfpCOAiB24KsUVspZM=
Received: from DM6PR12MB3163.namprd12.prod.outlook.com (20.179.104.150) by
 DM6PR12MB2746.namprd12.prod.outlook.com (20.176.118.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 15:56:14 +0000
Received: from DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555]) by DM6PR12MB3163.namprd12.prod.outlook.com
 ([fe80::bcaf:86d4:677f:9555%6]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 15:56:14 +0000
From: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
Thread-Topic: The current SME implementation fails kexec/kdump kernel booting.
Thread-Index: AQHVGtxpl7Okj5q6IUu+1zsUud1soaaLplcA
Date: Tue, 4 Jun 2019 15:56:14 +0000
Message-ID: <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
In-Reply-To: <20190604134952.GC26891@MiWiFi-R3L-srv>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0201CA0050.namprd02.prod.outlook.com
 (2603:10b6:803:20::12) To DM6PR12MB3163.namprd12.prod.outlook.com
 (2603:10b6:5:182::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Thomas.Lendacky@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.77.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 858a807c-ca9a-4963-4bcf-08d6e9052c25
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM6PR12MB2746; 
x-ms-traffictypediagnostic: DM6PR12MB2746:
x-microsoft-antispam-prvs: <DM6PR12MB27463E5CC03B3A2995BEDE8DEC150@DM6PR12MB2746.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(136003)(39860400002)(396003)(189003)(199004)(14444005)(256004)(31696002)(64756008)(73956011)(66946007)(66476007)(66556008)(36756003)(54906003)(6116002)(3846002)(86362001)(11346002)(476003)(102836004)(446003)(26005)(2906002)(81156014)(6246003)(2616005)(68736007)(66066001)(81166006)(25786009)(53936002)(186003)(7736002)(305945005)(8676002)(4326008)(8936002)(66446008)(229853002)(6512007)(31686004)(71190400001)(52116002)(486006)(76176011)(5660300002)(6486002)(316002)(72206003)(6436002)(6506007)(386003)(53546011)(99286004)(71200400001)(478600001)(6916009)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR12MB2746;
 H:DM6PR12MB3163.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IW0ZyDsOez+RkEtH82npNt4nPCKymOPbYw0WbX1cteoWXZCA9488q6QOM+2c3U2pjnyVeVHZggi6CVxMS4XlV8j7rrmir8tS2Z2J1ewuQPJfhr9a+TmyFkzcWPaVYuHy8OrmtGjlClkOerSDI4K1ILA1xj2ITQWOAUABu9diWspjKdmgFZ42juLK7yWsmNFfgZp2gPYmmUtXKIym3WV7Uc11msF+c11RDwVciW9cfe9lcjLEjrHw862wGHHASnQuQXlxbnY3AMQmDKj/qOaoJRYWjwKTHodB1QB7Fh3xV4z0z8bj0ACFnzrzHbiUwMrxsvU3MubDO+rTz0Z86xaGR8C/8nJw9WUq/D4nYzSGuLXji8f9hgiHaTJ79U6A0Q/WRi88Dojb8A/yvM5CInVQaCn5TkA24x4H0APTB197X6I=
Content-ID: <D13757902CD10A43859E451C8DC1BB6A@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 858a807c-ca9a-4963-4bcf-08d6e9052c25
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 15:56:14.7711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlendack@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085625_262934_3FA6F4AB 
X-CRM114-Status: GOOD (  30.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 6/4/19 8:49 AM, Baoquan He wrote:
> Hi Tom,
> 
> Lianbo reported kdump kernel can't boot well with 'nokaslr' added, and
> have to enable KASLR in kdump kernel to make it boot successfully. This
> blocked his work on enabling sme for kexec/kdump. And on some machines
> SME kernel can't boot in 1st kernel.
> 
> I checked code of SME implementation, and found out the root cause. The
> above failures are caused by SME code, sme_encrypt_kernel(). In
> sme_encrypt_kernel(), you get a 2M of encryption work area as intermediate
> buffer to encrypt kernel in-place. And the work area is just after _end of
> kernel.

I remember worrying about something like this back when I was testing the
kexec support. I had come up with a patch to address it, but never got the
time to test and submit it.  I've included it here if you'd like to test
it (I haven't done run this patch in quite some time). If it works, we can
think about submitting it.

Thanks,
Tom

---
x86/mm: Create an SME workarea in the kernel for early encryption

From: Tom Lendacky <thomas.lendacky@amd.com>

The SME workarea used during early encryption of the kernel during boot
is situated on a 2MB boundary after the end of the kernel text, data,
etc. sections (_end).  This works well during initial boot of a compressed
kernel because of the relocation used for decompression of the kernel.
But when performing a kexec boot, there's a chance that the SME workarea
may not be mapped by the kexec pagetables or that some of the other data
used by kexec could exist in this range.

Create a section for SME in the vmlinux.lds.S.  Position it after "_end"
so that the memory will be reclaimed during boot and since it is all
zeroes it compresses well.  Since this new section will be part of the
kernel, kexec will account for it in pagetable mappings and placement of
data after the kernel.

Here's an example of a kernel size without and with the SME section:
	without:
		vmlinux:	36,501,616
		bzImage:	 6,497,344

		100000000-47f37ffff : System RAM
		  1e4000000-1e47677d4 : Kernel code	(0x7677d4)
		  1e47677d5-1e4e2e0bf : Kernel data	(0x6c68ea)
		  1e5074000-1e5372fff : Kernel bss	(0x2fefff)

	with:
		vmlinux:	44,419,408
		bzImage:	 6,503,136

		880000000-c7ff7ffff : System RAM
		  8cf000000-8cf7677d4 : Kernel code	(0x7677d4)
		  8cf7677d5-8cfe2e0bf : Kernel data	(0x6c68ea)
		  8d0074000-8d0372fff : Kernel bss	(0x2fefff)

Signed-off-by: Tom Lendacky <thomas.lendacky@amd.com>
---
 arch/x86/kernel/vmlinux.lds.S      |   16 ++++++++++++++++
 arch/x86/mm/mem_encrypt_identity.c |   22 ++++++++++++++++++++--
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 0850b5149345..8c4377983e54 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -379,6 +379,22 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);		/* keep VO_INIT_SIZE page aligned */
 	_end = .;
 
+#ifdef CONFIG_AMD_MEM_ENCRYPT
+	/*
+	 * SME workarea section: Lives outside of the kernel proper
+	 * (_text - _end) for performing in-place encryption. Resides
+	 * on a 2MB boundary to simplify the pagetable setup used for
+	 * the encryption.
+	 */
+	. = ALIGN(HPAGE_SIZE);
+	.sme : AT(ADDR(.sme) - LOAD_OFFSET) {
+		__sme_begin = .;
+		*(.sme)
+		. = ALIGN(HPAGE_SIZE);
+		__sme_end = .;
+	}
+#endif
+
 	STABS_DEBUG
 	DWARF_DEBUG
 
diff --git a/arch/x86/mm/mem_encrypt_identity.c b/arch/x86/mm/mem_encrypt_identity.c
index 4aa9b1480866..c55c2ec8fb12 100644
--- a/arch/x86/mm/mem_encrypt_identity.c
+++ b/arch/x86/mm/mem_encrypt_identity.c
@@ -73,6 +73,19 @@ struct sme_populate_pgd_data {
 	unsigned long vaddr_end;
 };
 
+/*
+ * This work area lives in the .sme section, which lives outside of
+ * the kernel proper. It is sized to hold the intermediate copy buffer
+ * and more than enough pagetable pages.
+ *
+ * By using this section, the kernel can be encrypted in place and we
+ * avoid any possibility of boot parameters or initramfs images being
+ * placed such that the in-place encryption logic overwrites them.  This
+ * section is 2MB aligned to allow for simple pagetable setup using only
+ * PMD entries (see vmlinux.lds.S).
+ */
+static char sme_workarea[2 * PMD_PAGE_SIZE] __section(.sme);
+
 static char sme_cmdline_arg[] __initdata = "mem_encrypt";
 static char sme_cmdline_on[]  __initdata = "on";
 static char sme_cmdline_off[] __initdata = "off";
@@ -314,8 +327,13 @@ void __init sme_encrypt_kernel(struct boot_params *bp)
 	}
 #endif
 
-	/* Set the encryption workarea to be immediately after the kernel */
-	workarea_start = kernel_end;
+	/*
+	 * We're running identity mapped, so we must obtain the address to the
+	 * SME encryption workarea using rip-relative addressing.
+	 */
+	asm ("lea sme_workarea(%%rip), %0"
+	     : "=r" (workarea_start)
+	     : "p" (sme_workarea));
 
 	/*
 	 * Calculate required number of workarea bytes needed:


> 
> This happens to work in 1st kernel. But it will fail kexec/kdump kernel
> absolutely. Because we load realmode/kernel/initrd in kexec-tools from
> top to down. In kexec-tools, realmode is put just after kernel image. If
> KASLR enabled, kernel may be randomized to other position, then kdump
> kernel can boot. However, if nokaslr specified, the 2M intermediate
> encryption workarea will definitely stump into the following realmode,
> and fail kexec/kdump kernel booting.
> 
> I have hacked kexec-tools code to put real mode area 4M away from the
> kernel image end, it works and confirm my finding. So the current SME
> in-place encryption way is not only a kexec/kdump issue, but also an
> issue in 1st kernel. Because KASLR could put kernel at the end of an
> available memory region, how to make sure the next 2M intermediate
> workarea must exist; if KASLR put kernel to be close to starting address
> of any cmdline/initrd/setup_data, how to make sure the gap between them
> must be larger than 2M.
> 
> Thanks
> Baoquan
> 
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
