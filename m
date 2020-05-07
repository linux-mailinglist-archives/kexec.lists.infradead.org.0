Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8341C997C
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AIL88B87IslSRFQZPw5QLgBZwI1lS0NkV0p1syDkFE=; b=pl63VfYMPWH8L+
	gj+SpRkNaG4Bwtpc+P4fSY0HW1PtS/0iDAv+Uwt4AVoB7zj4gIzFxf4dfkCNEz7FW0DSuKF8xNbX0
	M1csRrRZEvgHX6x7JY/VYf3vBSsNLtnKcMWpRqO5OMJom4+z6aB32/hcdyuirYkjpQICgY6uPfh6l
	XB6Lw3Yqj/wOl+pWIaXIFgKxCnzDlyjaIH/DCL/EgbgBZ1uRXfmLLVcX6SUN4PoEqHV0VTi26PrR7
	y9INaRRf/dtmNWEvhbCpDnB+8QvaYSIV9g3jYylVfVMobzyLrVUOwX2H6g6x139KZbmKHcXaQtAex
	rL8E8sfDk5705VolSKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlUH-0007xw-Kq; Thu, 07 May 2020 18:43:13 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlUE-0007wj-7Q
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:43:11 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047IbgcN004211;
 Thu, 7 May 2020 18:42:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=mEDzEEDSb5jTK1bCppRO0q98+bzWMLYtdC4AbIqeGDQ=;
 b=p67mYIkdiwJsmnC7ru/mh2/Yfh7z9rNBCXeRFzXgPFjCOGcc6I/jf3cI3t6jZOTbWonM
 nrcSzlCIQt+vCOOmQ/QHgtwcbiTxDxYwCMIRsCfZg9MO/a2lQzY2bzVgx0RBUj9W7WR4
 WoXDElaGKcpiCo0hEvUgaktAI5Hm931tQRG3DGXkUcl15yZqquCGX7wNaqqTAh6RNGwp
 roIaOjY0Q8kbCj8TBaOv7qBq0ccyMZ0+dsll3Io87z1wQ08LfzFH9Uq74xr2J0iYjz+t
 pKvSm6/u3weJp62HWoSStAEc9eR/JZCV8uDuCKATw4q2+0vtEYn3HjHH6uRkJLw5jOHm sg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30vhvyj79h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 18:42:01 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047IavNE026231;
 Thu, 7 May 2020 18:42:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 30sjdyq2v8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 18:42:00 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 047IfuCW023296;
 Thu, 7 May 2020 18:41:56 GMT
Received: from [10.154.153.82] (/10.154.153.82)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 May 2020 11:41:55 -0700
Subject: Re: [RFC 21/43] x86/KASLR: PKRAM: support physical kaslr
To: Kees Cook <keescook@chromium.org>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
 <1588812129-8596-22-git-send-email-anthony.yznaga@oracle.com>
 <202005071049.2D0939137D@keescook>
From: Anthony Yznaga <anthony.yznaga@oracle.com>
Organization: Oracle Corporation
Message-ID: <62a1c002-ad7b-a364-5797-6d7f5545d5cf@oracle.com>
Date: Thu, 7 May 2020 11:41:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <202005071049.2D0939137D@keescook>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070151
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxlogscore=999
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_114310_357591_312E2E7F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
Cc: rafael.j.wysocki@intel.com, linux-doc@vger.kernel.org,
 gustavo@embeddedor.com, peterz@infradead.org, kexec@lists.infradead.org,
 paul.c.lai@intel.com, dave.hansen@linux.intel.com, zhenzhong.duan@oracle.com,
 lei.l.li@intel.com, linux-mm@kvack.org, nivedita@alum.mit.edu,
 ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org, ashok.raj@intel.com,
 bhe@redhat.com, corbet@lwn.net, daniel.kiper@oracle.com, x86@kernel.org,
 hughd@google.com, willy@infradead.org, rppt@linux.ibm.com, mhocko@kernel.org,
 mingo@redhat.com, vdavydov.dev@gmail.com, ying.huang@intel.com,
 Thomas.Lendacky@amd.com, kevin.tian@intel.com, jroedel@suse.de,
 dan.j.williams@intel.com, bp@alien8.de, zhiyuan.lv@intel.com, luto@kernel.org,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, dima@golovin.in,
 yang.shi@linux.alibaba.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, guro@fb.com, minchan@kernel.org,
 ebiederm@xmission.com, jason.zeng@intel.com, hannes@cmpxchg.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, masahiroy@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 5/7/20 10:51 AM, Kees Cook wrote:
> On Wed, May 06, 2020 at 05:41:47PM -0700, Anthony Yznaga wrote:
>> Avoid regions of memory that contain preserved pages when computing
>> slots used to select where to put the decompressed kernel.
> This is changing the slot-walking code instead of updating
> mem_avoid_overlap() -- that's where the check for a "reserved" memory
> area should live.
>
> For example, this is how both mem_avoid_memmap() and the setup_data
> memory areas are handled.
>
> Is there a reason mem_avoid_overlap() can't be used here?
>

I was thinking it would be more efficient to process just
the regions that did not contain preserved pages rather
than checking for preserved pages in mem_avoid_overlap(),
but I see that may just be adding unnecessary complexity.
I'll investigate modifying mem_avoid_overlap().
Thank you for the comments!

Anthony

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
