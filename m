Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D13F1057B8
	for <lists+kexec@lfdr.de>; Thu, 21 Nov 2019 18:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEBHyUomG3t5zGfxCsMMu7LkbyZTDnn24bQNJ966c9s=; b=Rqm+XzSMWW4P5l
	A7GK+dvhaH7p/kiEtQnj5ZkOWH7v96qrB41rl2qXilEO+PGpqJDMHuVaEzb6x0jvXML6dibw6kyaX
	ic3rMui1x8WYLocgOS+Ax+T+vSWgGmX9I9A/ckgvwZ3F+gnV8mLfbgVq4jcZ2n94DIfmNW67Ff9ay
	Lt5Sx0bRexeH8QHOjYdqW9mM1YpTfd20H+U1qXjHGfgc2bRG3MlECIaHncz7TGrLnNEM++WjQsngH
	XnmQfq09NAosZsoqnjDMSWUjum8WunT2O8x4EBUzSqqQkSY2qBpcOCdXR7XuWZO9jwFiYQJczv/Ex
	0PrCKJNAt+cGtYwmuFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpoY-0003JN-Re; Thu, 21 Nov 2019 17:00:18 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpoU-0003Cb-MB
 for kexec@lists.infradead.org; Thu, 21 Nov 2019 17:00:16 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALGxbCT116309;
 Thu, 21 Nov 2019 17:00:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=M7KktgvPT02LH/j0JutoXo3ayN0AEDqJQdtT6U4S5dg=;
 b=keIaL3vndeJGiJ06SOaxej/esgGDIaz/Ve2MuGWXvqxxTFL2/iFM4r4L6G7EoqCGttgh
 I6x6Fl9mclOU7l9lmC20+rUTlJEtZdkBi++QPJlZyseGGX+crZ9OlPgwbLvDVMsjdsHz
 to9M2IEBs/voeNMIiJtNGPWCkW8z2pTmDSdeK5OzJsRpI0E6By7Hw3Nmdqu3Ekhigmoh
 zP/A7CqWKSd+8Vwx6dAUhiLxdg4VLMO0K6M9vN4v10mpl4WUPlR2VbkdzsqD/b5SNzvH
 rlCneoCdw8P2mc5UHbZ8dz8N9OlajHjbFMbAqUAhlqYNPL7HKkwhdyaqtYgzo1U3AwrA 6A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2wa8hu5p0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 17:00:03 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xALGwFiF191388;
 Thu, 21 Nov 2019 17:00:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2wda06baxa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2019 17:00:02 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xALH01pS014339;
 Thu, 21 Nov 2019 17:00:01 GMT
Received: from dhcp-10-154-110-122.vpn.oracle.com (/10.154.110.122)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 21 Nov 2019 09:00:00 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
Date: Thu, 21 Nov 2019 10:59:57 -0600
Message-Id: <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
 <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911210148
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911210148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_090014_857805_65BA0083 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On Nov 21, 2019, at 10:32 AM, Bhupesh Sharma <bhsharma@redhat.com> wrote:
> 
>> On Wed, Nov 20, 2019 at 10:03 PM John Donnelly <john.p.donnelly@oracle.com> wrote:
>> 
>> Hi,
>> 
>>  Recent test below
>> This is your makedumpfile pulled from sourceforge .
> 
> Do you mean github? I don't remember pushing anything to sourceforge.
> Please share the exact branch name and the source URL for the
> makedumpfile you are using

 Hi,   You are correct -  GitHub -    I used your url posted below ; I do not see the arch/arm64.c changes in the zip  version I downloaded . 

 I am not a GUI/gitlab user. Can you please send a  tarball copy of your working makedumpfile   CLI  via email and I will verify it works.





> 
>> It would be helpful if you bumped the VERSION and DATE to be certain we are using the correct pieces .
> 
> You can print makedumpfile version in your scriptware. It lets you
> know the latest makedumpfile version. Note that this indicates the
> latest released version and not the development branch. The
> development branch is for things under test (like this change) and
> being stabilized whereas the released version contains a bump to a new
> VERSION number and DATE at which a release is made.
> 
> # makedumpfile -v
> makedumpfile: version 1.6.6 (released on 27 Jun 2019)
> lzo    enabled
> 
>> kdump: saving vmcore
>> makedumpfile 1.6.6, 27 Jun 2019.
>> sadump: unsupported architecture
>>              phys_start         phys_end       virt_start         virt_end
>> LOAD[ 0]         92a80000         94fe0000 ffff800010080000 ffff8000125e0000
>> LOAD[ 1]         90000000         92000000 ffffc00010000000 ffffc00012000000
>> LOAD[ 2]         928c0000         dfe00000 ffffc000128c0000 ffffc0005fe00000
>> LOAD[ 3]         ffe00000         fffa0000 ffffc0007fe00000 ffffc0007ffa0000
>> LOAD[ 4]        880000000       1000000000 ffffc00800000000 ffffc00f80000000
>> LOAD[ 5]       8800000000       bff7030000 ffffc08780000000 ffffc0bf77030000
>> LOAD[ 6]       bff7060000       bff72b0000 ffffc0bf77060000 ffffc0bf772b0000
>> LOAD[ 7]       bff72f0000       bff8030000 ffffc0bf772f0000 ffffc0bf78030000
>> LOAD[ 8]       bff8050000       bff8070000 ffffc0bf78050000 ffffc0bf78070000
>> LOAD[ 9]       bff80d0000       bff8270000 ffffc0bf780d0000 ffffc0bf78270000
>> LOAD[10]       bff8280000       bff83d0000 ffffc0bf78280000 ffffc0bf783d0000>
>> LOAD[11]       bff8870000       bffc1a0000 ffffc0bf78870000 ffffc0bf7c1a0000
>> LOAD[12]       bffc1c0000       bffc1d0000 ffffc0bf7c1c0000 ffffc0bf7c1d0000
>> LOAD[13]       bffe210000       bfffd10000 ffffc0bf7e210000 ffffc0bf7fd10000
>> LOAD[14]       bfffd40000       bfffd50000 ffffc0bf7fd40000 ffffc0bf7fd50000
>> LOAD[15]       bfffe00000       c000000000 ffffc0bf7fe00000 ffffc0bf80000000
>> Linux kdump
>> VMCOREINFO   :
>  OSRELEASE=5.4.0-rc8
>  PAGESIZE=65536
>> page_size    : 65536
>  SYMBOL(init_uts_ns)=ffff800011a65ca8
>  SYMBOL(node_online_map)=ffff800011a5d490
>  SYMBOL(swapper_pg_dir)=ffff8000112f0000
>  SYMBOL(_stext)=ffff800010081000
>  SYMBOL(vmap_area_list)=ffff800011b29a98
>  SYMBOL(mem_section)=ffff00bf7be7e300
>  LENGTH(mem_section)=64
>  SIZE(mem_section)=16
>  OFFSET(mem_section.section_mem_map)=0
>  NUMBER(MAX_PHYSMEM_BITS)=48   OFFSET(vmap_area.va_start)=0
>  OFFSET(vmap_area.list)=40
>  LENGTH(zone.free_area)=14
>  SYMBOL(log_buf)=ffff800011ada808
>  SYMBOL(log_buf_len)=ffff800011ada810
>  SYMBOL(log_first_idx)=ffff800011e772d4
>  SYMBOL(clear_idx)=ffff800011e74d20
>  SYMBOL(log_next_idx)=ffff800011e772e0
>  SIZE(printk_log)=16
>  OFFSET(printk_log.ts_nsec)=0
>  OFFSET(printk_log.len)=8
>  OFFSET(printk_log.text_len)=10
>  OFFSET(printk_log.dict_len)=12
>  LENGTH(free_area.free_list)=6
>  NUMBER(NR_FREE_PAGES)=0
>  NUMBER(PG_lru)=4
>  NUMBER(PG_private)=13
>  NUMBER(PG_swapcache)=10
>  NUMBER(PG_swapbacked)=19
>  NUMBER(PG_slab)=9
>  NUMBER(PG_hwpoison)=22
>  NUMBER(PG_head_mask)=65536
>  NUMBER(PAGE_BUDDY_MAPCOUNT_VALUE)=-129
>  NUMBER(HUGETLB_PAGE_DTOR)=2
>  NUMBER(PAGE_OFFLINE_MAPCOUNT_VALUE)=-257
>  NUMBER(VA_BITS)=48
>  NUMBER(kimage_voffset)=0xffff7fff7d600000
>  NUMBER(PHYS_OFFSET)=0x80000000
>  NUMBER(tcr_el1_t1sz)=0x10
>  KERNELOFFSET=0
>  CRASHTIME=1574266958
> 
>> phys_base    : 80000000 (vmcoreinfo)
> 
>> max_mapnr    : c00000
>> There is enough free memory to be done in one cycle.
> 
>> Buffer size for the cyclic mode: 3145728
>> va_bits      : 47
>> page_offset  : ffffc00000000000
>> kdump: saving vmcore failed
> 
> You again seem to be using an old/incorrect version of makedumpfile.
> As you can see here from [0] and [1] the newer makedumpfile patches I
> posted print where the va_bits are derived from - _stext symbol or
> vmcoreinfo.
> 
> Since you are running a kdump test, it should print something like
> this for va_bits if you have the correct makedumpfile changes compiled
> in and installed (via make install) - notice the source from where
> va_bits is determined properly is printed in brackets:
> phys_base    : 80000000 (vmcoreinfo)
> 
> max_mapnr    : 97fd00
> There is enough free memory to be done in one cycle.
> 
> Buffer size for the cyclic mode: 2490176
> va_bits        : 48 (vmcoreinfo)
> page_offset    : ffff000000000000 (approximation)
> kimage_voffset   : fffeffff8fc00000
> max_physmem_bits : 52
> section_size_bits: 30
> 
> Regards,
> Bhupesh
> 
> [0]. <https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_bhupesh-2Dsharma_makedumpfile_blob_52-2Dbit-2Dva-2Dsupport-2Dvia-2Dvmcore-2Dupstream-2Dv4_arch_arm64.c-23L468&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=fTxuFz0gFYqF-yeTV5k-4ve75ozUz7jUQ2H70G6l3Ew&s=5KmTLEoAJrWyjQx6U6QkzZyiqBw8rGIzrSdF5Bc1ui4&e= >
> [1]. <https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_bhupesh-2Dsharma_makedumpfile_blob_52-2Dbit-2Dva-2Dsupport-2Dvia-2Dvmcore-2Dupstream-2Dv4_arch_arm64.c-23L511&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=fTxuFz0gFYqF-yeTV5k-4ve75ozUz7jUQ2H70G6l3Ew&s=e_1XFoI356GjqUeFk-99QB4wCe-pAUuzZTHirfBMtbQ&e= >
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=fTxuFz0gFYqF-yeTV5k-4ve75ozUz7jUQ2H70G6l3Ew&s=fasW4oWXU7Sb-TR6YC5qCtqErxdidkMgCKZtKMp7Ans&e= 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
