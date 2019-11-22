Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1DA10722A
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 13:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwONZB7wRiEhUoIYmj03sCr+fWB5Zi7vRYGuy6UqFDE=; b=q6iadGEP992dgH
	0qhw3Ig4xG/y/lA3Y0KvhxdSVgdiFlgcoJYWmiJKYZDmjyjNWyvPV+LTMJiOrgujXTmPwHWldec+5
	JLn2hVLuOow1of2mrdJG5v0BqPCZrbbx2XuN9Qbr/nFA8A+Y+2Hi9aaRWJ91xwTv2GZf6Tad/r0Ds
	SJ1LgexBBFwAJZ+h0lGdE3Sd7oJWOqc7lQHWR1ry0ktQPzusSIWjfNzBuXrhWuao6BsP9rVThlW1b
	p/aV3H/oCCLihCTDAR2/1ijP/cFyaHanAfjRT6y0jATX2kTqCAt8uL/cqxoWDkjPq+Me6z/DjBcsM
	5uCw0azZ7h4Xdjn7qjig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY84l-00012F-8o; Fri, 22 Nov 2019 12:30:15 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY84i-00011e-1B
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 12:30:13 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMCTeUI191772;
 Fri, 22 Nov 2019 12:30:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=bIZfCxYej8bcutO8S7kBMuqDnGVZhhbTV4exiD880p8=;
 b=fQRdEH5cD6iBU4XLY0LCEdazGmtXv8exkNGND8gbKhUVqfEOMH+eblB45//VsyeYoUnj
 sAwrNe63zVICzoRKI55+LBNnxw5DlBP4B77qHHxGdgte0lFmSD1y6qssDu3pa1m1YQte
 gFNKDGxu92q1ev45+5lqYeSCIyNMlz2+4GkO7qmIFgt3Q3aTx+mrOLZklqzw0hMBJK9v
 8CP8xb508X2LOCA2TzmvkSZxlMeBJ+vYsgC0aG0q5HaN9JqgnzO6hTSqdVf3qkSqyLX3
 SIFmIkqo/sxcHdccRblJn9x0BZlxMDhD5cHDjuO31nanOAYsLfhdGjTjy9TmC6pO2D9G ug== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2wa9rr278x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 12:30:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMCT78D082283;
 Fri, 22 Nov 2019 12:30:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2we8yft6fk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 12:30:05 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAMCU4xx003079;
 Fri, 22 Nov 2019 12:30:04 GMT
Received: from dhcp-10-154-114-246.vpn.oracle.com (/10.154.114.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Nov 2019 04:30:04 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <C825B090-610A-4EFE-9292-57DDD4832BA6@oracle.com>
Date: Fri, 22 Nov 2019 06:30:02 -0600
Message-Id: <03F00E44-16D9-46E8-88DA-6891968CE167@oracle.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
 <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
 <4C21663E-4E3B-402D-96FD-BD7623C6628A@oracle.com>
 <F5504C62-6D51-4E37-AA35-269FEA7AE480@oracle.com>
 <C825B090-610A-4EFE-9292-57DDD4832BA6@oracle.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911220112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911220112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_043012_206777_7D986431 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIE5vdiAyMSwgMjAxOSwgYXQgMzo1MiBQTSwgSm9obiBEb25uZWxseSA8am9obi5wLmRv
bm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+IAo+IAo+IAo+PiBPbiBOb3YgMjEsIDIwMTksIGF0
IDE6MjAgUE0sIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90
ZToKPj4gCj4+IAo+PiAKPj4+IE9uIE5vdiAyMSwgMjAxOSwgYXQgMTA6NTkgQU0sIEpvaG4gRG9u
bmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPj4+IAo+Pj4gCj4+PiAK
Pj4+PiBPbiBOb3YgMjEsIDIwMTksIGF0IDEwOjMyIEFNLCBCaHVwZXNoIFNoYXJtYSA8YmhzaGFy
bWFAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4gCj4+Pj4+IE9uIFdlZCwgTm92IDIwLCAyMDE5IGF0
IDEwOjAzIFBNIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90
ZToKPj4+Pj4gCj4+Pj4+IEhpLAo+Pj4+PiAKPj4+Pj4gUmVjZW50IHRlc3QgYmVsb3cKPj4+Pj4g
VGhpcyBpcyB5b3VyIG1ha2VkdW1wZmlsZSBwdWxsZWQgZnJvbSBzb3VyY2Vmb3JnZSAuCj4+Pj4g
Cj4+Pj4gRG8geW91IG1lYW4gZ2l0aHViPyBJIGRvbid0IHJlbWVtYmVyIHB1c2hpbmcgYW55dGhp
bmcgdG8gc291cmNlZm9yZ2UuCj4+Pj4gUGxlYXNlIHNoYXJlIHRoZSBleGFjdCBicmFuY2ggbmFt
ZSBhbmQgdGhlIHNvdXJjZSBVUkwgZm9yIHRoZQo+Pj4+IG1ha2VkdW1wZmlsZSB5b3UgYXJlIHVz
aW5nCj4+PiAKPj4+IEhpLCAgIFlvdSBhcmUgY29ycmVjdCAtICBHaXRIdWIgLSAgICBJIHVzZWQg
eW91ciB1cmwgcG9zdGVkIGJlbG93IDsgSSBkbyBub3Qgc2VlIHRoZSBhcmNoL2FybTY0LmMgY2hh
bmdlcyBpbiB0aGUgemlwICB2ZXJzaW9uIEkgZG93bmxvYWRlZCAuIAo+Pj4gCj4+PiBJIGFtIG5v
dCBhIEdVSS9naXRsYWIgdXNlci4gQ2FuIHlvdSBwbGVhc2Ugc2VuZCBhICB0YXJiYWxsIGNvcHkg
b2YgeW91ciB3b3JraW5nIG1ha2VkdW1wZmlsZSAgIENMSSAgdmlhIGVtYWlsIGFuZCBJIHdpbGwg
dmVyaWZ5IGl0IHdvcmtzLgo+Pj4gCj4+IAo+PiAKPj4gSGkgCj4+IAo+PiAKPj4gIEkgd2FzIGFi
bGUgdG8gZm9yayBhbmQgY2xvbmUgeW91ciB3b3JrIGFyZWEgLgo+PiAKPj4gSSBjYW4gc2VlIG1h
a2VkdW1wZmlsZSB3b3JrcyBub3cgISAKPj4gCj4+IEZhbnRhc3RpYyA7OyAgVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGllbmNlICEKPj4gCj4gCj4gCj4gCj4gICBJIGRpZCBzb21lIGJhc2ljIHVuaXQg
dGVzdHMuIAo+IAo+ICAgVGhpcyBwYXRjaCBmb3IgIG1ha2VkdW1wZmlsZSAgT05MWSBXT1JLUyBv
biA1LjQuMC1yYzgga2VybmVsLiAKPiAKPiAgSXQgZG9lcyBub3Qgd29yayB3aXRoIGEgcHJldmlv
dXMgNC4xOCBrZXJuZWwuIAo+IAo+IElzIHRoaXMgc3VwcG9zZSB0byBiZSBiYWNrd2FyZHMgY29t
cGF0aWJsZSAgPwo+IAo+IAoKCgogWW91ciBtYWtlZHVtcGZpbGUgcmFuIG9uIDQuMTguIGtlcm5l
bCAgIGRlYnVnIG91dHB1dCA6CgoKCmtkdW1wOiBzYXZpbmcgdm1jb3JlCnNhZHVtcDogdW5zdXBw
b3J0ZWQgYXJjaGl0ZWN0dXJlCiAgICAgICAgICAgICAgIHBoeXNfc3RhcnQgICAgICAgICBwaHlz
X2VuZCAgICAgICB2aXJ0X3N0YXJ0ICAgICAgICAgdmlydF9lbmQKTE9BRFsgMF0gICAgICAgICA5
MDA4MDAwMCAgICAgICAgIDkxZjUwMDAwIGZmZmYwMDAwMTAwODAwMDAgZmZmZjAwMDAxMWY1MDAw
MApMT0FEWyAxXSAgICAgICAgIDkwMDAwMDAwICAgICAgICAgOTIwMDAwMDAgZmZmZjgwMDAxMDAw
MDAwMCBmZmZmODAwMDEyMDAwMDAwCkxPQURbIDJdICAgICAgICAgOTI4YzAwMDAgICAgICAgICBl
M2UwMDAwMCBmZmZmODAwMDEyOGMwMDAwIGZmZmY4MDAwNjNlMDAwMDAKTE9BRFsgM10gICAgICAg
ICBmZmUwMDAwMCAgICAgICAgIGZmZmEwMDAwIGZmZmY4MDAwN2ZlMDAwMDAgZmZmZjgwMDA3ZmZh
MDAwMApMT0FEWyA0XSAgICAgICAgODgwMDAwMDAwICAgICAgIDEwMDAwMDAwMDAgZmZmZjgwMDgw
MDAwMDAwMCBmZmZmODAwZjgwMDAwMDAwCkxPQURbIDVdICAgICAgIDg4MDAwMDAwMDAgICAgICAg
YmZmNzAzMDAwMCBmZmZmODA4NzgwMDAwMDAwIGZmZmY4MGJmNzcwMzAwMDAKTE9BRFsgNl0gICAg
ICAgYmZmNzA2MDAwMCAgICAgICBiZmY3MmIwMDAwIGZmZmY4MGJmNzcwNjAwMDAgZmZmZjgwYmY3
NzJiMDAwMApMT0FEWyA3XSAgICAgICBiZmY3MmYwMDAwICAgICAgIGJmZjgwMzAwMDAgZmZmZjgw
YmY3NzJmMDAwMCBmZmZmODBiZjc4MDMwMDAwCkxPQURbIDhdICAgICAgIGJmZjgwNTAwMDAgICAg
ICAgYmZmODA3MDAwMCBmZmZmODBiZjc4MDUwMDAwIGZmZmY4MGJmNzgwNzAwMDAKTE9BRFsgOV0g
ICAgICAgYmZmODBkMDAwMCAgICAgICBiZmY4MjcwMDAwIGZmZmY4MGJmNzgwZDAwMDAgZmZmZjgw
YmY3ODI3MDAwMApMT0FEWzEwXSAgICAgICBiZmY4MjgwMDAwICAgICAgIGJmZjgzZDAwMDAgZmZm
ZjgwYmY3ODI4MDAwMCBmZmZmODBiZjc4M2QwMDAwCkxPQURbMTFdICAgICAgIGJmZjg4NzAwMDAg
ICAgICAgYmZmYzFhMDAwMCBmZmZmODBiZjc4ODcwMDAwIGZmZmY4MGJmN2MxYTAwMDAKTE9BRFsx
Ml0gICAgICAgYmZmYzFjMDAwMCAgICAgICBiZmZjMWQwMDAwIGZmZmY4MGJmN2MxYzAwMDAgZmZm
ZjgwYmY3YzFkMDAwMApMT0FEWzEzXSAgICAgICBiZmZlMjEwMDAwICAgICAgIGJmZmZkMTAwMDAg
ZmZmZjgwYmY3ZTIxMDAwMCBmZmZmODBiZjdmZDEwMDAwCkxPQURbMTRdICAgICAgIGJmZmZkNDAw
MDAgICAgICAgYmZmZmQ1MDAwMCBmZmZmODBiZjdmZDQwMDAwIGZmZmY4MGJmN2ZkNTAwMDAKTE9B
RFsxNV0gICAgICAgYmZmZmUwMDAwMCAgICAgICBjMDAwMDAwMDAwIGZmZmY4MGJmN2ZlMDAwMDAg
ZmZmZjgwYmY4MDAwMDAwMApMaW51eCBrZHVtcApWTUNPUkVJTkZPICAgOgogIE9TUkVMRUFTRT00
LjE4LjAtMTQ3LmVsOC5hYXJjaDY0LiAgPDzigJTigJTigJTigJQgICAgICA0LjE4LiBrZXJuZWwg
CiAgUEFHRVNJWkU9NjU1MzYKcGFnZV9zaXplICAgIDogNjU1MzYKICBTWU1CT0woaW5pdF91dHNf
bnMpPWZmZmYwMDAwMTE0NjU3YTgKICBTWU1CT0wobm9kZV9vbmxpbmVfbWFwKT1mZmZmMDAwMDEx
NDVkMzIwCiAgU1lNQk9MKHN3YXBwZXJfcGdfZGlyKT1mZmZmMDAwMDEwZmEwMDAwCiAgU1lNQk9M
KF9zdGV4dCk9ZmZmZjAwMDAxMDA4MTAwMAogIFNZTUJPTCh2bWFwX2FyZWFfbGlzdCk9ZmZmZjAw
MDAxMTRlYTIyMAogIFNZTUJPTChtZW1fc2VjdGlvbik9ZmZmZjgwYmY3YmU3YzYwMAogIExFTkdU
SChtZW1fc2VjdGlvbik9MTAyNAogIFNJWkUobWVtX3NlY3Rpb24pPTE2CiAgT0ZGU0VUKG1lbV9z
ZWN0aW9uLnNlY3Rpb25fbWVtX21hcCk9MAogIFNJWkUocGFnZSk9NjQKICBTSVpFKHBnbGlzdF9k
YXRhKT02NjU2CiAgU0laRSh6b25lKT0xNzI4CiAgU0laRShmcmVlX2FyZWEpPTg4CiAgU0laRShs
aXN0X2hlYWQpPTE2CiAgU0laRShub2RlbWFza190KT04CiAgT0ZGU0VUKHBhZ2UuZmxhZ3MpPTAK
ICBPRkZTRVQocGFnZS5fcmVmY291bnQpPTUyCiAgT0ZGU0VUKHBhZ2UubWFwcGluZyk9MjQKICBP
RkZTRVQocGFnZS5scnUpPTgKICBPRkZTRVQocGFnZS5fbWFwY291bnQpPTQ4CiAgT0ZGU0VUKHBh
Z2UucHJpdmF0ZSk9NDAKICBPRkZTRVQocGFnZS5jb21wb3VuZF9kdG9yKT0xNgogIE9GRlNFVChw
YWdlLmNvbXBvdW5kX29yZGVyKT0xNwogIE9GRlNFVChwYWdlLmNvbXBvdW5kX2hlYWQpPTgKICBP
RkZTRVQocGdsaXN0X2RhdGEubm9kZV96b25lcyk9MAogIE9GRlNFVChwZ2xpc3RfZGF0YS5ucl96
b25lcyk9NTk4NAogIE9GRlNFVChwZ2xpc3RfZGF0YS5ub2RlX3N0YXJ0X3Bmbik9NTk5MgogIE9G
RlNFVChwZ2xpc3RfZGF0YS5ub2RlX3NwYW5uZWRfcGFnZXMpPTYwMDgKICBPRkZTRVQocGdsaXN0
X2RhdGEubm9kZV9pZCk9NjAxNgogIE9GRlNFVCh6b25lLmZyZWVfYXJlYSk9MTkyCiAgT0ZGU0VU
KHpvbmUudm1fc3RhdCk9MTU1MgogIE9GRlNFVCh6b25lLnNwYW5uZWRfcGFnZXMpPTk2CiAgT0ZG
U0VUKGZyZWVfYXJlYS5mcmVlX2xpc3QpPTAKICBPRkZTRVQobGlzdF9oZWFkLm5leHQpPTAKICBP
RkZTRVQobGlzdF9oZWFkLnByZXYpPTgKICBPRkZTRVQodm1hcF9hcmVhLnZhX3N0YXJ0KT0wCiAg
T0ZGU0VUKHZtYXBfYXJlYS5saXN0KT00OAogIExFTkdUSCh6b25lLmZyZWVfYXJlYSk9MTQKICBT
WU1CT0wobG9nX2J1Zik9ZmZmZjAwMDAxMTQ5ZjY3MAogIFNZTUJPTChsb2dfYnVmX2xlbik9ZmZm
ZjAwMDAxMTQ5ZjY2OAogIFNZTUJPTChsb2dfZmlyc3RfaWR4KT1mZmZmMDAwMDExY2M1NzRjCiAg
U1lNQk9MKGNsZWFyX2lkeCk9ZmZmZjAwMDAxMWNjNTc1OAogIFNZTUJPTChsb2dfbmV4dF9pZHgp
PWZmZmYwMDAwMTFjYzU3NDgKICBTSVpFKHByaW50a19sb2cpPTE2CiAgT0ZGU0VUKHByaW50a19s
b2cudHNfbnNlYyk9MAogIE9GRlNFVChwcmludGtfbG9nLmxlbik9OAogIE9GRlNFVChwcmludGtf
bG9nLnRleHRfbGVuKT0xMAogIE9GRlNFVChwcmludGtfbG9nLmRpY3RfbGVuKT0xMgogIExFTkdU
SChmcmVlX2FyZWEuZnJlZV9saXN0KT01CiAgTlVNQkVSKE5SX0ZSRUVfUEFHRVMpPTAKICBOVU1C
RVIoUEdfbHJ1KT01CiAgTlVNQkVSKFBHX3ByaXZhdGUpPTEyCiAgTlVNQkVSKFBHX3N3YXBjYWNo
ZSk9OQogIE5VTUJFUihQR19zd2FwYmFja2VkKT0xOAogIE5VTUJFUihQR19zbGFiKT04CiAgTlVN
QkVSKFBHX2h3cG9pc29uKT0yMQogIE5VTUJFUihQR19oZWFkX21hc2spPTMyNzY4CiAgTlVNQkVS
KFBBR0VfQlVERFlfTUFQQ09VTlRfVkFMVUUpPS0xMjkKICBOVU1CRVIoSFVHRVRMQl9QQUdFX0RU
T1IpPTIKICBOVU1CRVIoUEFHRV9PRkZMSU5FX01BUENPVU5UX1ZBTFVFKT0tMjU3CiAgTlVNQkVS
KFZBX0JJVFMpPTQ4CiAgTlVNQkVSKE1BWF9QSFlTTUVNX0JJVFMpPTUyCiAgTlVNQkVSKE1BWF9V
U0VSX1ZBX0JJVFMpPTUyCiAgTlVNQkVSKGtpbWFnZV92b2Zmc2V0KT0weGZmZmVmZmZmODAwMDAw
MDAKICBOVU1CRVIoUEhZU19PRkZTRVQpPTB4ODAwMDAwMDAKICBLRVJORUxPRkZTRVQ9MAogIENS
QVNIVElNRT0xNTc0NDI1NTU5CgpwaHlzX2Jhc2UgICAgOiA4MDAwMDAwMCAodm1jb3JlaW5mbykK
Cm1heF9tYXBuciAgICA6IGMwMDAwMApUaGVyZSBpcyBlbm91Z2ggZnJlZSBtZW1vcnkgdG8gYmUg
ZG9uZSBpbiBvbmUgY3ljbGUuCgpCdWZmZXIgc2l6ZSBmb3IgdGhlIGN5Y2xpYyBtb2RlOiAzMTQ1
NzI4CnZhX2JpdHMgICAgICAgIDogNDggKHZtY29yZWluZm8pCnBhZ2Vfb2Zmc2V0ICAgIDogZmZm
ZjAwMDAwMDAwMDAwMCAoYXBwcm94aW1hdGlvbikKa2ltYWdlX3ZvZmZzZXQgICA6IGZmZmVmZmZm
ODAwMDAwMDAKbWF4X3BoeXNtZW1fYml0cyA6IDUyCnNlY3Rpb25fc2l6ZV9iaXRzOiAzMAprZHVt
cDogc2F2aW5nIHZtY29yZSBmYWlsZWQKCgoKCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBrZXhlYyBtYWlsaW5nIGxpc3QKPiBrZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCj4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91
PWh0dHAtM0FfX2xpc3RzLmluZnJhZGVhZC5vcmdfbWFpbG1hbl9saXN0aW5mb19rZXhlYyZkPUR3
SUNBZyZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj10MmZQ
ZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09ZThfTXY2eFdPa1ZxWFRU
cEZwTjQ0d0kyeUpvRDV2a1VyM3VDRWd4VFlqYyZzPV9CTkJNZ01XZnRSNHVYZ3d4R2g4enBxN2lX
Sm9mMENZa1luRllFUE5PU1UmZT0gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
