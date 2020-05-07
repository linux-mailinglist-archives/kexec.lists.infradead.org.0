Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA1B1C988A
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USZvZ+8va8xzDQdSrLEU89bSr2hfoMhQOOcAW9WUR6s=; b=UFQ2cS5OR/9mxF
	OzJxmYnLhgkdEhyn0y/a2NewvNxwwTx6OVs1mGeWgd43zSiJ6G6tcH6a9TNTn1sEXy3jpS1fY4Stq
	Yk43EHcz0W5PiKQ5QebFSdfOaSBUFwp81+kstKq7Z3Y9l5gNisTeycSsAlgoAj1uqPjUWZ03yDrQ0
	EoxLm+nn9X4gxvpfrMBG1VY17I7rdisNksivCMCl9txAgkFikpMaqDsyboDDoNJdrlPjw4fDYgy3Y
	cevxoXcnvbv0Y9PfrO2qAPoOO5MzY1sdwmfN+uaXS7LbPQ90Zx/d3O8oWNRwhcMeoj3ni5aah4wYb
	SpsOXB1o8N7q36dcCZeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkoz-0002RQ-9e; Thu, 07 May 2020 18:00:33 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkov-0002QN-Cd
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:00:31 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047HxGbk193256;
 Thu, 7 May 2020 17:59:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=eNm8TslRfbAqOJ0il5EFDqQ5BbtyQf+gW8C4YjNf6PU=;
 b=ShBlW6b+n76I0t9PPaaK17p3bBhSBnnb7APKXKt0xU81bRyii/HW/DnnUz187lUXB0Db
 19TPylcypXK/RaCiEmBvy5W/nB47m+OxYI3u+s2NN//Ix/p4w2K0Hvu2jDGEu+3MYL99
 Qo85BTFXBQ96wnkQ3ijxYKAFsfuLJAsNWbHFN9cqWDvAaHLm1BV4sjvHi9jAG7GrAuln
 /UA6XKyfijbSLx+PDkE/GzrhOeTfGCvDVEIvyfh6bZRNgy8+IKEarcvlclUQc7uA4uEM
 cK57Sw1XRPjYEPgexJP0teLXh+6SSWCieUghGtU+di0hwYA0HUrQN5upxz+wRn8/cKRj Xg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 30usgq8st7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 17:59:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 047HrXse152229;
 Thu, 7 May 2020 17:59:22 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 30sjnq543d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 17:59:22 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 047HxEnw031926;
 Thu, 7 May 2020 17:59:14 GMT
Received: from [10.154.153.82] (/10.154.153.82)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 May 2020 10:59:13 -0700
Subject: Re: [RFC 34/43] shmem: PKRAM: multithread preserving and restoring
 shmem pages
To: Randy Dunlap <rdunlap@infradead.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
 <1588812129-8596-35-git-send-email-anthony.yznaga@oracle.com>
 <4e44858d-a416-696e-0d65-0b5ca8836b7d@infradead.org>
From: Anthony Yznaga <anthony.yznaga@oracle.com>
Organization: Oracle Corporation
Message-ID: <533ec65c-6d92-a75b-b151-aaa3f43224f8@oracle.com>
Date: Thu, 7 May 2020 10:59:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <4e44858d-a416-696e-0d65-0b5ca8836b7d@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070146
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9614
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1011
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110030_651226_21C430B0 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: x86@kernel.org, linux-doc@vger.kernel.org, gustavo@embeddedor.com,
 peterz@infradead.org, kexec@lists.infradead.org, paul.c.lai@intel.com,
 dave.hansen@linux.intel.com, mhocko@kernel.org, lei.l.li@intel.com,
 nivedita@alum.mit.edu, ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org,
 ashok.raj@intel.com, bhe@redhat.com, corbet@lwn.net, masahiroy@kernel.org,
 rafael.j.wysocki@intel.com, hughd@google.com, willy@infradead.org,
 rppt@linux.ibm.com, mingo@redhat.com, vdavydov.dev@gmail.com,
 ying.huang@intel.com, Thomas.Lendacky@amd.com, kevin.tian@intel.com,
 jroedel@suse.de, keescook@chromium.org, dan.j.williams@intel.com, bp@alien8.de,
 zhiyuan.lv@intel.com, luto@kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, dima@golovin.in, yang.shi@linux.alibaba.com,
 ndesaulniers@google.com, zhenzhong.duan@oracle.com, guro@fb.com,
 minchan@kernel.org, ebiederm@xmission.com, jason.zeng@intel.com,
 hannes@cmpxchg.org, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 daniel.kiper@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiA1LzcvMjAgOTozMCBBTSwgUmFuZHkgRHVubGFwIHdyb3RlOgo+IE9uIDUvNi8yMCA1OjQy
IFBNLCBBbnRob255IFl6bmFnYSB3cm90ZToKPj4gSW1wcm92ZSBwZXJmb3JtYW5jZSBieSBtdWx0
aXRocmVhZGluZyB0aGUgd29yayB0byBwcmVzZXJ2ZSBhbmQgcmVzdG9yZQo+PiBzaG1lbSBwYWdl
cy4KPj4KPj4gQWRkICdwa3JhbV9tYXhfdGhyZWFkcz0nIGtlcm5lbCBvcHRpb24gdG8gc3BlY2lm
eSB0aGUgbWF4aW11bSBudW1iZXIKPj4gb2YgdGhyZWFkcyB0byB1c2UgdG8gcHJlc2VydmUgb3Ig
cmVzdG9yZSB0aGUgcGFnZXMgb2YgYSBzaG1lbSBmaWxlLgo+PiBUaGUgZGVmYXVsdCBpcyAxNi4K
PiBIaSwKPiBQbGVhc2UgZG9jdW1lbnQga2VybmVsIGJvb3Qgb3B0aW9ucyBpbiBEb2N1bWVudGF0
aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dC4KCkknbGwgZG8gdGhhdC7CoCBU
aGFua3MhCgpBbnRob255Cgo+Cj4+IFdoZW4gcHJlc2VydmluZyBwYWdlcyBlYWNoIHRocmVhZCBz
YXZlcyBjaHVua3Mgb2YgYSBmaWxlIHRvIGEgcGtyYW1fb2JqCj4+IHVudGlsIG5vIG1vcmUgbm8g
bW9yZSBjaHVua3MgYXJlIGF2YWlsYWJsZS4KPj4KPj4gV2hlbiByZXN0b3JpbmcgcGFnZXMgZWFj
aCB0aHJlYWQgbG9hZHMgcGFnZXMgdXNpbmcgYSBjb3B5IG9mIGEKPj4gcGtyYW1fc3RyZWFtIGlu
aXRpYWxpemVkIGJ5IHBrcmFtX3ByZXBhcmVfbG9hZF9vYmooKS4gVW5kZXIgdGhlIGhvb2QKPj4g
ZWFjaCB0aHJlYWQgZW5kcyB1cCBmZXRjaGluZyBhbmQgb3BlcmF0aW5nIG9uIHBrcmFtX2xpbmsg
cGFnZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFudGhvbnkgWXpuYWdhIDxhbnRob255Lnl6bmFn
YUBvcmFjbGUuY29tPgo+PiAtLS0KPj4gIGluY2x1ZGUvbGludXgvcGtyYW0uaCB8ICAgMiArCj4+
ICBtbS9zaG1lbV9wa3JhbS5jICAgICAgfCAxMDEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gdGhhbmtzLgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
a2V4ZWMK
